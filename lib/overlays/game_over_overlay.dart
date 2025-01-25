import 'package:easy_debounce/easy_debounce.dart';
import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/game/game_overlay.dart';
import 'package:flappy_dash_adventures/models/gamepad_key.dart';
import 'package:flappy_dash_adventures/overlays/game_overlay_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef OverlayMenuOption = ({String name, VoidCallback onPressed});

class GameOverOverlay extends StatefulWidget {
  final FlappyDashAdventuresGame game;

  const GameOverOverlay({
    super.key,
    required this.game,
  });

  @override
  State<GameOverOverlay> createState() => _GameOverOverlayState();
}

class _GameOverOverlayState extends State<GameOverOverlay> {
  final _gamepadController = GamepadController();

  late OverlayMenuOption tryAgainOption;
  late OverlayMenuOption mainMenuOption;

  late OverlayMenuOption focusedMenuOption;

  @override
  void initState() {
    super.initState();

    tryAgainOption = (
      name: 'Try again',
      onPressed: _tryAgain,
    );
    mainMenuOption = (
      name: 'Main menu',
      onPressed: _openMainMenu,
    );
    focusedMenuOption = tryAgainOption;

    _gamepadController.init(
      GamepadHandler(
        getSettings: () => context.read<GameSettingsCubit>().state.gameSettings.gamepad,
        onUp: () {
          setState(() {
            focusedMenuOption = focusedMenuOption == tryAgainOption ? mainMenuOption : tryAgainOption;
          });
        },
        onDown: () {
          setState(() {
            focusedMenuOption = focusedMenuOption == tryAgainOption ? mainMenuOption : tryAgainOption;
          });
        },
        onAction: () => focusedMenuOption.onPressed(),
      ),
    );
  }

  @override
  void dispose() {
    _gamepadController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GameOverlayWidget(
      children: [
        const Center(
          child: Text(
            'Game over',
            style: TextStyle(fontSize: 32),
          ),
        ),
        SizedBox(
          height: 88,
          child: Center(
            child: Text(
              'Score: ${widget.game.playerScore}',
              style: const TextStyle(fontSize: 24),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: _tryAgain,
          child: Text(
            tryAgainOption.name,
            style: TextStyle(
              fontSize: 32,
              color: focusedMenuOption.name == tryAgainOption.name ? Colors.blue : null,
            ),
          ),
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: _openMainMenu,
          child: Text(
            mainMenuOption.name,
            style: TextStyle(
              fontSize: 32,
              color: focusedMenuOption.name == mainMenuOption.name ? Colors.blue : null,
            ),
          ),
        ),
      ],
    );
  }

  void _tryAgain() {
    EasyDebounce.debounce(
      'retry-game-debounce',
      const Duration(milliseconds: 500),
      () {
        widget.game.overlays.clear();
        widget.game.startGame();
      },
    );
  }

  void _openMainMenu() {
    widget.game.overlays.clear();
    widget.game.overlays.add(GameOverlay.mainMenu.name);
  }
}

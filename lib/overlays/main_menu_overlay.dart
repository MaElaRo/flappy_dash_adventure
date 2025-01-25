import 'package:easy_debounce/easy_debounce.dart';
import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/game/game_overlay.dart';
import 'package:flappy_dash_adventures/models/gamepad_key.dart';
import 'package:flappy_dash_adventures/overlays/game_over_overlay.dart';
import 'package:flappy_dash_adventures/overlays/game_overlay_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainMenuOverlay extends StatefulWidget {
  final FlappyDashAdventuresGame game;

  const MainMenuOverlay({
    super.key,
    required this.game,
  });

  @override
  State<MainMenuOverlay> createState() => _MainMenuOverlayState();
}

class _MainMenuOverlayState extends State<MainMenuOverlay> {
  final _gamepadController = GamepadController();

  late OverlayMenuOption playMenuOption;
  late OverlayMenuOption settingsMenuOption;

  late OverlayMenuOption focusedMenuOption;

  @override
  void initState() {
    super.initState();

    playMenuOption = (
      name: 'Play',
      onPressed: _play,
    );
    settingsMenuOption = (
      name: 'Settings',
      onPressed: _openSettings,
    );
    focusedMenuOption = playMenuOption;

    _gamepadController.init(
      GamepadHandler(
        getSettings: () => context.read<GameSettingsCubit>().state.gameSettings.gamepad,
        onUp: () {
          setState(() {
            focusedMenuOption = focusedMenuOption == playMenuOption ? settingsMenuOption : playMenuOption;
          });
        },
        onDown: () {
          setState(() {
            focusedMenuOption = focusedMenuOption == playMenuOption ? settingsMenuOption : playMenuOption;
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
            'Flappy Dash',
            style: TextStyle(fontSize: 32),
          ),
        ),
        const SizedBox(height: 88),
        ElevatedButton(
          onPressed: _play,
          child: Text(
            playMenuOption.name,
            style: TextStyle(
              fontSize: 32,
              color: focusedMenuOption.name == playMenuOption.name ? Colors.blue : null,
            ),
          ),
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: _openSettings,
          child: Text(
            settingsMenuOption.name,
            style: TextStyle(
              fontSize: 32,
              color: focusedMenuOption.name == settingsMenuOption.name ? Colors.blue : null,
            ),
          ),
        )
      ],
    );
  }

  void _play() {
    EasyDebounce.debounce(
      'start-game-debounce',
      const Duration(milliseconds: 500),
      () {
        widget.game.overlays.clear();
        widget.game.startGame();
      },
    );
  }

  void _openSettings() {
    widget.game.overlays.clear();
    widget.game.overlays.add(GameOverlay.settings.name);
  }
}

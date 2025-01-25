import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/game/game_overlay.dart';
import 'package:flappy_dash_adventures/models/gamepad_key.dart';
import 'package:flappy_dash_adventures/overlays/game_over_overlay.dart';
import 'package:flappy_dash_adventures/overlays/game_overlay_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsOverlay extends StatefulWidget {
  final FlappyDashAdventuresGame game;

  const SettingsOverlay({
    super.key,
    required this.game,
  });

  @override
  State<SettingsOverlay> createState() => _SettingsOverlayState();
}

class _SettingsOverlayState extends State<SettingsOverlay> {
  final _gamepadController = GamepadController();

  late OverlayMenuOption backMenuOption;
  late OverlayMenuOption gameplayMenuOption;
  late OverlayMenuOption controlsMenuOption;
  late OverlayMenuOption videoMenuOption;
  late OverlayMenuOption audioMenuOption;

  late List<OverlayMenuOption> menuOptions;

  late OverlayMenuOption focusedMenuOption;

  @override
  void initState() {
    super.initState();

    backMenuOption = (
      name: 'Back',
      onPressed: _back,
    );
    gameplayMenuOption = (
      name: 'Gameplay',
      onPressed: _openGameplay,
    );
    controlsMenuOption = (
      name: 'Controls',
      onPressed: _openControls,
    );
    videoMenuOption = (
      name: 'Video',
      onPressed: _openVideo,
    );
    audioMenuOption = (
      name: 'Audio',
      onPressed: _openAudio,
    );
    menuOptions = [
      backMenuOption,
      gameplayMenuOption,
      controlsMenuOption,
      videoMenuOption,
      audioMenuOption,
    ];

    focusedMenuOption = gameplayMenuOption;

    _gamepadController.init(
      GamepadHandler(
        getSettings: () => context.read<GameSettingsCubit>().state.gameSettings.gamepad,
        onUp: () {
          final index = menuOptions.indexOf(focusedMenuOption) - 1;

          setState(() {
            focusedMenuOption = menuOptions[index < 0 ? menuOptions.length - 1 : index];
          });
        },
        onDown: () {
          final index = menuOptions.indexOf(focusedMenuOption) + 1;

          setState(() {
            focusedMenuOption = menuOptions[index == menuOptions.length ? 0 : index];
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: _back,
              icon: Icon(
                Icons.arrow_back,
                color: focusedMenuOption.name == backMenuOption.name ? Colors.blue : null,
              ),
            ),
            const Spacer(),
            const Center(
              child: Text(
                'Settings',
                style: TextStyle(fontSize: 32),
              ),
            ),
            const Spacer(),
            const SizedBox(width: 48),
          ],
        ),
        const SizedBox(height: 16),
        ListTile(
          title: Text(
            gameplayMenuOption.name,
            style: TextStyle(
              fontSize: 22,
              color: focusedMenuOption.name == gameplayMenuOption.name ? Colors.blue : null,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
          onTap: _openGameplay,
        ),
        ListTile(
          title: Text(
            controlsMenuOption.name,
            style: TextStyle(
              fontSize: 22,
              color: focusedMenuOption.name == controlsMenuOption.name ? Colors.blue : null,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
          onTap: _openControls,
        ),
        ListTile(
          title: Text(
            videoMenuOption.name,
            style: TextStyle(
              fontSize: 22,
              color: focusedMenuOption.name == videoMenuOption.name ? Colors.blue : null,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
          onTap: _openVideo,
        ),
        ListTile(
          title: Text(
            audioMenuOption.name,
            style: TextStyle(
              fontSize: 22,
              color: focusedMenuOption.name == audioMenuOption.name ? Colors.blue : null,
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
          onTap: _openAudio,
        ),
      ],
    );
  }

  void _back() {
    widget.game.overlays.clear();
    widget.game.overlays.add(GameOverlay.mainMenu.name);
  }

  void _openGameplay() {
    widget.game.overlays.clear();
    widget.game.overlays.add(GameOverlay.gameplaySettings.name);
  }

  void _openControls() {
    widget.game.overlays.clear();
    widget.game.overlays.add(GameOverlay.controlsSettings.name);
  }

  void _openVideo() {
    widget.game.overlays.clear();
    widget.game.overlays.add(GameOverlay.videoSettings.name);
  }

  void _openAudio() {
    widget.game.overlays.clear();
    widget.game.overlays.add(GameOverlay.audioSettings.name);
  }
}

import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/cubits/gamepads_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/game/game_overlay.dart';
import 'package:flappy_dash_adventures/overlays/game_overlay_widget.dart';
import 'package:flappy_dash_adventures/widgets/settings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ControlsSettingsOverlay extends StatefulWidget {
  final FlappyDashAdventuresGame game;

  const ControlsSettingsOverlay({
    super.key,
    required this.game,
  });

  @override
  State<ControlsSettingsOverlay> createState() => _ControlsSettingsOverlayState();
}

class _ControlsSettingsOverlayState extends State<ControlsSettingsOverlay> {
  bool _isEditingActionKey = false;

  @override
  Widget build(BuildContext context) {
    return GameOverlayWidget(
      children: [
        BlocConsumer<GamepadsCubit, GamepadsState>(
          listenWhen: (previous, current) =>
              previous.lastEvent?.key != current.lastEvent?.key ||
              previous.lastEvent?.value != current.lastEvent?.value,
          listener: (context, state) {
            if (_isEditingActionKey) {
              final gameSettings = context.read<GameSettingsCubit>().state.gameSettings;
              final updatedGamePadSettings = gameSettings.gamepad.copyWith(actionKey: state.lastEvent?.key);

              context.read<GameSettingsCubit>().updateGameSettings(
                    gameSettings.copyWith(gamepad: updatedGamePadSettings),
                  );

              setState(() {
                _isEditingActionKey = false;
              });
            }
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        widget.game.overlays.clear();
                        widget.game.overlays.add(GameOverlay.settings.name);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Spacer(),
                    const Center(
                      child: Text(
                        'Controls',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 48),
                  ],
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Detected gamepads',
                        style: TextStyle(fontSize: 20),
                      ),
                      if (state.gamepads.isNotEmpty)
                        ...state.gamepads.map((gamepad) => Text('${gamepad.id} - ${gamepad.name}'))
                      else
                        const Text('No gamepads detected.'),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                const Center(
                  child: Text(
                    'Mapping',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                BlocBuilder<GameSettingsCubit, GameSettingsState>(
                  builder: (context, state) {
                    return SettingsSection(
                      title: 'Action',
                      subtitle: 'Button to perform an action.',
                      builder: (context) => ElevatedButton(
                        onPressed: () {
                          if (!_isEditingActionKey) {
                            setState(() {
                              _isEditingActionKey = true;
                            });
                          }
                        },
                        child: Text(
                          _isEditingActionKey ? '...' : state.gameSettings.gamepad.actionKey ?? 'Select key',
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

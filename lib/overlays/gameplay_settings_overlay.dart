import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/game/game_overlay.dart';
import 'package:flappy_dash_adventures/models/game_settings.dart';
import 'package:flappy_dash_adventures/overlays/game_overlay_widget.dart';
import 'package:flappy_dash_adventures/widgets/settings_section.dart';
import 'package:flappy_dash_adventures/widgets/step_counter_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameplaySettingsOverlay extends StatefulWidget {
  final FlappyDashAdventuresGame game;

  const GameplaySettingsOverlay({
    super.key,
    required this.game,
  });

  @override
  State<GameplaySettingsOverlay> createState() => _GameplaySettingsOverlayState();
}

class _GameplaySettingsOverlayState extends State<GameplaySettingsOverlay> {
  bool _showCustomSettings = false;

  @override
  void initState() {
    super.initState();

    _showCustomSettings = context.read<GameSettingsCubit>().state.gameSettings.gameplay.isCustom;
  }

  @override
  Widget build(BuildContext context) {
    return GameOverlayWidget(
      children: [
        BlocBuilder<GameSettingsCubit, GameSettingsState>(
          builder: (context, state) {
            return Column(
              children: <Widget>[
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
                        'Gameplay',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 48),
                  ],
                ),
                const SizedBox(height: 16),
                ToggleButtons(
                  onPressed: (index) {
                    switch (index) {
                      case 0:
                        context.read<GameSettingsCubit>().updateGameSettings(
                              state.gameSettings.copyWith(gameplay: GameplaySettings.easy()),
                            );
                        setState(() {
                          _showCustomSettings = false;
                        });
                        break;
                      case 1:
                        context.read<GameSettingsCubit>().updateGameSettings(
                              state.gameSettings.copyWith(gameplay: GameplaySettings.medium()),
                            );
                        setState(() {
                          _showCustomSettings = false;
                        });
                        break;
                      case 2:
                        context.read<GameSettingsCubit>().updateGameSettings(
                              state.gameSettings.copyWith(gameplay: GameplaySettings.hard()),
                            );
                        setState(() {
                          _showCustomSettings = false;
                        });
                        break;
                      case 3:
                        setState(() {
                          _showCustomSettings = true;
                        });
                    }
                  },
                  isSelected: [
                    !_showCustomSettings && state.gameSettings.gameplay == GameplaySettings.easy(),
                    !_showCustomSettings && state.gameSettings.gameplay == GameplaySettings.medium(),
                    !_showCustomSettings && state.gameSettings.gameplay == GameplaySettings.hard(),
                    _showCustomSettings,
                  ],
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Easy',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Medium',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Hard',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Custom',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                if (_showCustomSettings)
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 16),
                      const Text(
                        'General',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SettingsSection(
                        title: 'Game speed',
                        subtitle: 'Higher speed makes the pipes move faster.',
                        builder: (context) => StepCounterButtons(
                          value: state.gameSettings.gameplay.gameSpeed,
                          min: 10,
                          max: 150,
                          onChanged: (value) => context.read<GameSettingsCubit>().updateGameSettings(
                                state.gameSettings.copyWith.gameplay(gameSpeed: value),
                              ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Pipes',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SettingsSection(
                        title: 'Hide one pipe',
                        subtitle: 'If enabled only one pipe is visible in a group.',
                        builder: (context) => Switch(
                          value: state.gameSettings.gameplay.hideTopPipes,
                          onChanged: (value) => context.read<GameSettingsCubit>().updateGameSettings(
                                state.gameSettings.copyWith.gameplay(hideTopPipes: value),
                              ),
                        ),
                      ),
                      SettingsSection(
                        title: 'Auto open pipes',
                        subtitle: 'If enabled pipes will slightly open when player is between them.',
                        builder: (context) => Switch(
                          value: state.gameSettings.gameplay.autoOpenPipes,
                          onChanged: (value) => context.read<GameSettingsCubit>().updateGameSettings(
                                state.gameSettings.copyWith.gameplay(autoOpenPipes: value),
                              ),
                        ),
                      ),
                      SettingsSection(
                        title: 'Gap between pipes',
                        subtitle: 'Bigger gap makes it easier for the bird to pass through.',
                        builder: (context) => StepCounterButtons(
                          value: state.gameSettings.gameplay.gapBetweenPipes,
                          min: 90,
                          max: 200,
                          onChanged: (value) => context.read<GameSettingsCubit>().updateGameSettings(
                                state.gameSettings.copyWith.gameplay(gapBetweenPipes: value),
                              ),
                        ),
                      ),
                      SettingsSection(
                        title: 'Pipe groups distance',
                        subtitle: 'Increase the value to have pipe groups further apart.',
                        builder: (context) => StepCounterButtons(
                          value: state.gameSettings.gameplay.distanceBetweenPipeGroups,
                          min: 100,
                          max: 500,
                          onChanged: (value) => context.read<GameSettingsCubit>().updateGameSettings(
                                state.gameSettings.copyWith.gameplay(distanceBetweenPipeGroups: value),
                              ),
                        ),
                      ),
                      SettingsSection(
                        title: 'Minimum pipe height',
                        subtitle: 'Increase the value to have pipes higher on the screen.',
                        builder: (context) => StepCounterButtons(
                          value: state.gameSettings.gameplay.minPipeHeight,
                          min: 50,
                          max: 200,
                          onChanged: (value) => context.read<GameSettingsCubit>().updateGameSettings(
                                state.gameSettings.copyWith.gameplay(minPipeHeight: value),
                              ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Bird',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SettingsSection(
                        title: 'Jump',
                        subtitle: 'Higher value makes the bird go higher.',
                        builder: (context) => StepCounterButtons(
                          value: state.gameSettings.gameplay.birdJumpHeight,
                          min: 100,
                          max: 300,
                          onChanged: (value) => context.read<GameSettingsCubit>().updateGameSettings(
                                state.gameSettings.copyWith.gameplay(birdJumpHeight: value),
                              ),
                        ),
                      ),
                      SettingsSection(
                        title: 'Gravity',
                        subtitle: 'Higher value makes the bird fall faster.',
                        builder: (context) => StepCounterButtons(
                          value: state.gameSettings.gameplay.birdGravity,
                          min: 100,
                          max: 500,
                          onChanged: (value) => context.read<GameSettingsCubit>().updateGameSettings(
                                state.gameSettings.copyWith.gameplay(birdGravity: value),
                              ),
                        ),
                      ),
                    ],
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}

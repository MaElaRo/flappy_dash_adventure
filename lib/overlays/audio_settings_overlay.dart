import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/game/game_overlay.dart';
import 'package:flappy_dash_adventures/overlays/game_overlay_widget.dart';
import 'package:flappy_dash_adventures/widgets/settings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AudioSettingsOverlay extends StatelessWidget {
  final FlappyDashAdventuresGame game;

  const AudioSettingsOverlay({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return GameOverlayWidget(
      children: [
        BlocBuilder<GameSettingsCubit, GameSettingsState>(
          builder: (context, state) {
            return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        game.overlays.clear();
                        game.overlays.add(GameOverlay.settings.name);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Spacer(),
                    const Center(
                      child: Text(
                        'Audio',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 48),
                  ],
                ),
                SettingsSection(
                  title: 'Audio guidance',
                  subtitle: 'When enabled audio feedback is provided to guide you.',
                  builder: (context) => Switch(
                    value: state.gameSettings.audio.audioGuidance,
                    onChanged: (value) => context.read<GameSettingsCubit>().updateGameSettings(
                          state.gameSettings.copyWith.audio(audioGuidance: value),
                        ),
                  ),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

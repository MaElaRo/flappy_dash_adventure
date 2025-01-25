import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/game/game_overlay.dart';
import 'package:flappy_dash_adventures/overlays/game_overlay_widget.dart';
import 'package:flappy_dash_adventures/widgets/settings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VideoSettingsOverlay extends StatelessWidget {
  final FlappyDashAdventuresGame game;

  const VideoSettingsOverlay({
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
                        'Video',
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 48),
                  ],
                ),
                SettingsSection(
                  title: 'Visualize audio cues',
                  subtitle: 'When enabled visual cues are showed when audio is played.',
                  builder: (context) => Switch(
                    value: state.gameSettings.video.visualizeAudioCues,
                    onChanged: (value) => context.read<GameSettingsCubit>().updateGameSettings(
                          state.gameSettings.copyWith.video(visualizeAudioCues: value),
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

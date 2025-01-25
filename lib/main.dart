import 'package:flame/game.dart';
import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/cubits/gamepads_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/overlays/audio_settings_overlay.dart';
import 'package:flappy_dash_adventures/overlays/controls_settings_overlay.dart';
import 'package:flappy_dash_adventures/overlays/gameplay_settings_overlay.dart';
import 'package:flappy_dash_adventures/overlays/settings_overlay.dart';
import 'package:flappy_dash_adventures/overlays/game_over_overlay.dart';
import 'package:flappy_dash_adventures/game/game_overlay.dart';
import 'package:flappy_dash_adventures/overlays/main_menu_overlay.dart';
import 'package:flappy_dash_adventures/overlays/video_settings_overlay.dart';
import 'package:flappy_dash_adventures/repositories/game_settings_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => GameSettingsRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GameSettingsCubit(
              gameSettingsRepository: context.read<GameSettingsRepository>(),
            )..init(),
          ),
          BlocProvider(
            create: (context) => GamepadsCubit()..init(),
          ),
        ],
        child: Builder(
          builder: (context) {
            return GameWidget<FlappyDashAdventuresGame>.controlled(
              gameFactory: () => FlappyDashAdventuresGame(
                gameSettingsCubit: context.read<GameSettingsCubit>(),
              ),
              overlayBuilderMap: <String, OverlayWidgetBuilder<FlappyDashAdventuresGame>>{
                GameOverlay.mainMenu.name: (context, game) => MainMenuOverlay(game: game),
                GameOverlay.gameOver.name: (context, game) => GameOverOverlay(game: game),
                GameOverlay.settings.name: (context, game) => SettingsOverlay(game: game),
                GameOverlay.gameplaySettings.name: (context, game) => GameplaySettingsOverlay(game: game),
                GameOverlay.controlsSettings.name: (context, game) => ControlsSettingsOverlay(game: game),
                GameOverlay.videoSettings.name: (context, game) => VideoSettingsOverlay(game: game),
                GameOverlay.audioSettings.name: (context, game) => AudioSettingsOverlay(game: game),
              },
              initialActiveOverlays: [GameOverlay.mainMenu.name],
            );
          },
        ),
      ),
    ),
  );
}

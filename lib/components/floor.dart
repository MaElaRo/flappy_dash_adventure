import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/utils/assets.gen.dart';
import 'package:flutter/material.dart';

class Floor extends ParallaxComponent<FlappyDashAdventuresGame>
    with HasGameRef<FlappyDashAdventuresGame>, FlameBlocReader<GameSettingsCubit, GameSettingsState> {
  @override
  Future<void> onLoad() async {
    super.onLoad();

    parallax = await gameRef.loadParallax(
      [ParallaxImageData(Assets.sprites.base.path)],
      baseVelocity: Vector2(bloc.state.gameSettings.gameplay.gameSpeed, 0),
      alignment: Alignment.bottomLeft,
      repeat: ImageRepeat.repeatX,
      fill: LayerFill.none,
    );
  }
}

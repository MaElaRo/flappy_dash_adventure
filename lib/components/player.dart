import 'dart:async';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flappy_dash_adventures/components/circular_waves_component.dart';
import 'package:flappy_dash_adventures/components/pipe.dart';
import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/utils/assets.gen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Player extends SpriteAnimationComponent
    with
        CollisionCallbacks,
        HasGameRef<FlappyDashAdventuresGame>,
        FlameBlocReader<GameSettingsCubit, GameSettingsState> {
  Player();

  var _state = PlayerState.alive;
  var _yVelocity = 0.0;

  var score = 0;

  bool get isDead => _state == PlayerState.dead;

  Completer? _guideCompleter;

  @override
  Future<void> onLoad() async {
    super.onLoad();

    List<Sprite> sprites = [
      await Sprite.load(Assets.sprites.dashDownflap.path, images: gameRef.images),
      await Sprite.load(Assets.sprites.dashMidflap.path, images: gameRef.images),
      await Sprite.load(Assets.sprites.dashUpflap.path, images: gameRef.images)
    ];

    animation = SpriteAnimation.spriteList(sprites, stepTime: 0.2);

    add(RectangleHitbox(size: size));
  }

  @override
  void update(double dt) {
    super.update(dt);

    _updatePosition(dt);

    if (bloc.state.gameSettings.audio.audioGuidance) {
      _checkAbovePointZone();
    }
  }

  @override
  void onCollisionStart(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollisionStart(intersectionPoints, other);

    if (other is Pipe) {
      FlameAudio.play(Assets.audio.hitWav);
      kill();
    }
  }

  void flyUp() {
    debugPrint('Player flies up');

    FlameAudio.play(Assets.audio.swooshWav);
    _yVelocity = -(bloc.state.gameSettings.gameplay.birdJumpHeight);

    if (bloc.state.gameSettings.video.visualizeAudioCues) {
      game.add(
        CircularWavesComponent(position, Colors.blue),
      );
    }
  }

  void kill() {
    debugPrint('Player killed.');

    FlameAudio.play(Assets.audio.dieWav);
    _state = PlayerState.dead;

    if (bloc.state.gameSettings.video.visualizeAudioCues) {
      game.add(
        CircularWavesComponent(position, Colors.red),
      );
    }
  }

  void reset() {
    debugPrint('Player reset');

    _state = PlayerState.alive;
    score = 0;
    _yVelocity = 0.0;
    position = Vector2(gameRef.size.x * 0.3, gameRef.size.y * 0.5);
  }

  void _updatePosition(double dt) {
    _yVelocity += dt * bloc.state.gameSettings.gameplay.birdGravity;

    final newY = position.y + _yVelocity * dt;

    position = Vector2(position.x, newY);
    anchor = Anchor.center;

    angle = clampDouble(_yVelocity / 180, -pi * 0.25, pi * 0.25);
  }

  // FIXME: AudioPlayers Exception occurs sometimes.
  Future<void> _checkAbovePointZone() async {
    final pipes = gameRef.pipes;
    final nextPointZone = pipes.pointZones.firstWhereOrNull((zone) => zone.position.x > position.x);

    if (nextPointZone != null && (_guideCompleter == null || _guideCompleter!.isCompleted)) {
      _guideCompleter = Completer();

      if (position.y < nextPointZone.position.y + 40) {
        await FlameAudio.play(
          Assets.audio.hat,
          volume: position.x / nextPointZone.x,
        );
      } else if (position.y > nextPointZone.position.y + nextPointZone.size.y - 40) {
        await FlameAudio.play(
          Assets.audio.drum,
          volume: position.x / nextPointZone.x,
        );
      } else if (position.y > nextPointZone.position.y + 40 &&
          position.y < (nextPointZone.position.y + nextPointZone.size.y) - 40) {
        await FlameAudio.play(
          Assets.audio.chime,
          volume: position.x / nextPointZone.x,
        );
      }

      await Future.delayed(const Duration(milliseconds: 300));

      _guideCompleter?.complete();
    }
  }
}

enum PlayerState {
  alive,
  dead,
}

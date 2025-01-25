import 'dart:async';
import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flappy_dash_adventures/components/circular_waves_component.dart';
import 'package:flappy_dash_adventures/components/player.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/utils/assets.gen.dart';
import 'package:flutter/material.dart';

class PointZone extends PositionComponent with CollisionCallbacks, HasGameRef<FlappyDashAdventuresGame> {
  PointZone({
    super.size,
    super.position,
    this.visualizeAudioCues = false,
    this.onPlayerCollisionStart,
  });

  final bool visualizeAudioCues;
  final void Function(PointZone)? onPlayerCollisionStart;

  @override
  FutureOr<void> onLoad() {
    add(RectangleHitbox(size: size));

    return super.onLoad();
  }

  @override
  void onCollisionEnd(PositionComponent other) {
    super.onCollisionEnd(other);

    if (other is Player && !isRemoved) {
      debugPrint('Point scored');

      other.score++;

      FlameAudio.play(Assets.audio.pointWav);

      if (visualizeAudioCues) {
        game.add(
          CircularWavesComponent(
            Vector2(gameRef.score.position.x + 12, gameRef.score.position.y + 18),
            Colors.yellow,
          ),
        );
      }

      removeFromParent();
    }
  }

  @override
  void onCollisionStart(Set<Vector2> intersectionPoints, PositionComponent other) {
    super.onCollisionStart(intersectionPoints, other);

    if (other is Player && !isRemoved) {
      onPlayerCollisionStart?.call(this);
    }
  }
}

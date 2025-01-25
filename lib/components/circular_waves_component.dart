import 'dart:ui';
import 'package:flame/components.dart';
import 'package:flappy_dash_adventures/particles/circular_waves_particle.dart';
import 'package:flutter/material.dart';

class CircularWavesComponent extends PositionComponent {
  CircularWavesComponent(Vector2 position, Color color)
      : _particle = CircularWavesParticle(
          paint: Paint()
            ..color = color
            ..style = PaintingStyle.stroke,
        ),
        super(position: position);

  final CircularWavesParticle _particle;

  @override
  void render(Canvas canvas) {
    _particle.render(canvas);
  }

  @override
  void update(double dt) {
    _particle.update(dt);

    if (_particle.shouldRemove) {
      removeFromParent();
    }
  }
}

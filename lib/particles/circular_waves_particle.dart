import 'dart:ui';
import 'package:flame/particles.dart';
import 'package:flutter/material.dart';

class CircularWavesParticle extends Particle {
  CircularWavesParticle({
    required this.paint,
    double lifespan = 1.0,
  }) : super(lifespan: lifespan);

  final Paint paint;

  double _radius = 0.0;

  @override
  void update(double dt) {
    super.update(dt);

    _radius = progress * 100 / 2;
  }

  @override
  void render(Canvas canvas) {
    for (int i = 1; i <= 4; i++) {
      paint.strokeWidth = (1.0 - (progress / i)) * 2;

      canvas.drawCircle(Offset.zero, _radius / i, paint);
    }
  }
}

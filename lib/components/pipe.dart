import 'dart:async';

import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/utils/assets.gen.dart';

class Pipe extends PositionComponent with CollisionCallbacks, HasGameRef<FlappyDashAdventuresGame> {
  Pipe({
    this.pipePosition = PipePosition.top,
    super.size,
    super.position,
  });

  final PipePosition pipePosition;

  @override
  FutureOr<void> onLoad() async {
    final sprite = await Sprite.load(Assets.sprites.pipeGreen.path, images: gameRef.images);
    final nineTileBox = NineTileBox(sprite);
    nineTileBox.setGrid(
      leftWidth: 10,
      rightWidth: 10,
      topHeight: 60,
      bottomHeight: 60,
    );
    final nineTileBoxComponent = NineTileBoxComponent(nineTileBox: nineTileBox, size: size);

    if (pipePosition == PipePosition.top) {
      nineTileBoxComponent.flipVerticallyAroundCenter();
    }

    nineTileBoxComponent.anchor = Anchor.topLeft;

    add(nineTileBoxComponent);

    add(RectangleHitbox(size: size));

    return super.onLoad();
  }
}

enum PipePosition {
  bottom,
  top,
}

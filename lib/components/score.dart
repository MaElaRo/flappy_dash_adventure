import 'dart:ui' as ui;

import 'package:flame/components.dart';
import 'package:flame/image_composition.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/utils/assets.gen.dart';

class Score extends SpriteComponent with HasGameRef<FlappyDashAdventuresGame> {
  Score();

  final List<ui.Image> _sprites = [];

  @override
  Future<void> onLoad() async {
    final sprites = [
      Assets.sprites.a0,
      Assets.sprites.a1,
      Assets.sprites.a2,
      Assets.sprites.a3,
      Assets.sprites.a4,
      Assets.sprites.a5,
      Assets.sprites.a6,
      Assets.sprites.a7,
      Assets.sprites.a8,
      Assets.sprites.a9,
    ];

    for (int i = 0; i < sprites.length; ++i) {
      _sprites.add(await gameRef.images.load(sprites[i].path));
    }

    position = Vector2(gameRef.size.x * 0.5, 100);

    sprite = Sprite(_sprites[0]);

    return super.onLoad();
  }

  Future<void> updateValue(int score) async {
    if (_sprites.isEmpty) {
      return;
    }

    final scoreString = '$score';
    final imageComposition = ImageComposition();

    double offset = 0;

    for (int i = 0; i < scoreString.length; ++i) {
      int number = int.parse(scoreString[i]);

      imageComposition.add(
        _sprites[number],
        Vector2(offset, _sprites[number].size.y),
      );

      offset += _sprites[number].size.x;
    }

    final image = await imageComposition.compose();

    sprite = Sprite(image);
  }
}

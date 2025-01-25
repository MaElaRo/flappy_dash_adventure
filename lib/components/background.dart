import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flappy_dash_adventures/utils/assets.gen.dart';

class Background extends ParallaxComponent<FlappyDashAdventuresGame> with HasGameRef<FlappyDashAdventuresGame> {
  Background();

  @override
  Future<void> onLoad() async {
    parallax = await gameRef.loadParallax(
      [ParallaxImageData(Assets.sprites.background.path)],
      baseVelocity: Vector2(5, 0),
    );
  }
}

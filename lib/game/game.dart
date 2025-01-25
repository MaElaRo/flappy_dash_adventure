import 'dart:async';
import 'package:flame/cache.dart';
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flame_bloc/flame_bloc.dart';
import 'package:flappy_dash_adventures/components/background.dart';
import 'package:flappy_dash_adventures/components/floor.dart';
import 'package:flappy_dash_adventures/components/pipes.dart';
import 'package:flappy_dash_adventures/components/player.dart';
import 'package:flappy_dash_adventures/components/score.dart';
import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/game/game_overlay.dart';
import 'package:flappy_dash_adventures/models/gamepad_key.dart';
import 'package:flappy_dash_adventures/utils/assets.gen.dart';
import 'package:flutter/widgets.dart';

class FlappyDashAdventuresGame extends FlameGame with TapDetector, HasCollisionDetection {
  FlappyDashAdventuresGame({
    required GameSettingsCubit gameSettingsCubit,
  }) : _gameSettingsCubit = gameSettingsCubit;

  final GameSettingsCubit _gameSettingsCubit;

  late Player _player;
  late Component _playerBlocComponent;

  late Pipes pipes;
  late Floor _floor;
  late Score score;

  var _gameState = GameState.notStarted;

  final GamepadController _gamepadController = GamepadController();

  @override
  Images get images => Images(prefix: '');

  @override
  FutureOr<void> onLoad() async {
    FlameAudio.updatePrefix('');

    await setUpBackground();

    _gamepadController.init(
      GamepadHandler(
        getSettings: () => _gameSettingsCubit.state.gameSettings.gamepad,
        onAction: () {
          if (_gameState == GameState.started) {
            _player.flyUp();
          }
        },
      ),
    );

    return super.onLoad();
  }

  @override
  void onRemove() {
    _gamepadController.dispose();

    super.onRemove();
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (_gameState == GameState.started) {
      updatePlayer(dt);
      updatePipes(dt);
      updateScore();

      checkIfPlayerIsDead();
    }
  }

  @override
  void onTap() {
    super.onTap();

    if (_gameState == GameState.started) {
      _player.flyUp();
    }
  }

  @override
  void onDispose() {
    super.onDispose();

    FlameAudio.bgm.stop();
  }

  Future<void> startGame() async {
    debugPrint('Game started');

    await setupPlayer();
    await setupScore();

    _player.reset();
    pipes.reset();

    _gameState = GameState.started;
  }

  Future<void> setUpBackground() async {
    debugPrint('Background was set up');

    add(Background());
    setupPipes();
    _floor = Floor();
    add(
      FlameBlocProvider<GameSettingsCubit, GameSettingsState>.value(
        value: _gameSettingsCubit,
        children: [_floor],
      ),
    );
  }

  void setupPipes() {
    debugPrint('Pipes was set up');

    pipes = Pipes();
    add(
      FlameBlocProvider<GameSettingsCubit, GameSettingsState>.value(
        value: _gameSettingsCubit,
        children: [pipes],
      ),
    );
  }

  Future<void> setupPlayer() async {
    debugPrint('Player was set up');

    _player = Player();
    _playerBlocComponent = FlameBlocProvider<GameSettingsCubit, GameSettingsState>.value(
      value: _gameSettingsCubit,
      children: [_player],
    );
    add(_playerBlocComponent);
  }

  Future<void> setupScore() async {
    debugPrint('Score was set up');

    score = Score();
    add(score);
  }

  void updatePlayer(double dt) {
    // Check if player is out of bounds.

    if (_player.y < 0 || _player.y > (size.y - 112 + _player.size.y / 2)) {
      endGame();
    }
  }

  void updatePipes(double dt) {
    pipes.updatePosition(dt);
  }

  Future<void> updateScore() async {
    score.updateValue(_player.score);
  }

  void checkIfPlayerIsDead() {
    if (_player.isDead) {
      endGame();
    }
  }

  void endGame() {
    debugPrint('Game ended');

    FlameAudio.play(Assets.audio.dieWav);

    pipes.reset();

    _gameState = GameState.notStarted;

    remove(_playerBlocComponent);
    remove(score);

    overlays.add(GameOverlay.gameOver.name);
  }

  int get playerScore => _player.score;
}

enum GameState {
  notStarted,
  started,
}

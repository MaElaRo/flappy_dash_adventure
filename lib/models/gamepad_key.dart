import 'dart:async';

import 'package:flappy_dash_adventures/models/game_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamepads/gamepads.dart';

part 'gamepad_key.freezed.dart';

@freezed
class GamepadKey with _$GamepadKey {
  const factory GamepadKey({
    required String xboxAdaptiveControllerKey,
  }) = _GamepadKey;

  const GamepadKey._();

  bool matches(GamepadEvent event) => event.key == xboxAdaptiveControllerKey;
}

const dpadUp = GamepadKey(
  xboxAdaptiveControllerKey: 'dpad - yAxis',
);

const dpadDown = GamepadKey(
  xboxAdaptiveControllerKey: 'dpad - yAxis',
);

const actionKey = GamepadKey(
  xboxAdaptiveControllerKey: 'b.circle',
);

class GamepadController {
  StreamSubscription<GamepadEvent>? _gamepadSubscription;

  GamepadController();

  void init(GamepadHandler handler) {
    _gamepadSubscription?.cancel();
    _gamepadSubscription = Gamepads.events.listen(handler.handle);
  }

  void dispose() {
    _gamepadSubscription?.cancel();
  }
}

class GamepadHandler {
  GamepadHandler({
    required this.getSettings,
    this.onUp,
    this.onDown,
    this.onAction,
  });

  final GamepadSettings? Function() getSettings;

  final Function()? onUp;
  final Function()? onDown;
  final Function()? onAction;

  void handle(GamepadEvent event) {
    final settings = getSettings();

    if (dpadUp.matches(event) && event.value == 1) {
      onUp?.call();
    } else if (dpadDown.matches(event) && event.value == -1) {
      onDown?.call();
    } else if (settings != null && settings.actionKey == event.key && event.value == 1) {
      onAction?.call();
    } else if (settings == null && actionKey.matches(event) && event.value == 1) {
      onAction?.call();
    }
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gamepads/gamepads.dart';

part 'gamepads_state.dart';
part 'gamepads_cubit.freezed.dart';

class GamepadsCubit extends Cubit<GamepadsState> {
  GamepadsCubit() : super(const GamepadsState());

  StreamSubscription<GamepadEvent>? _streamSubscription;

  @override
  Future<void> close() async {
    _streamSubscription?.cancel();

    return super.close();
  }

  Future<void> init() async {
    final gamepads = await Gamepads.list();

    final gamepadsState = GamepadsState(gamepads: gamepads);

    emit(
      GamepadsState(gamepads: gamepads),
    );

    _streamSubscription = Gamepads.events.listen(
      (event) {
        emit(
          gamepadsState.copyWith(lastEvent: event),
        );
      },
    );
  }
}

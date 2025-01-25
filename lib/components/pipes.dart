import 'dart:math';

import 'package:flame/components.dart';
import 'package:flappy_dash_adventures/components/pipe.dart';
import 'package:flappy_dash_adventures/components/point_zone.dart';
import 'package:flappy_dash_adventures/cubits/game_settings_cubit.dart';
import 'package:flappy_dash_adventures/game/game.dart';
import 'package:flutter/widgets.dart';
import 'package:flame_bloc/flame_bloc.dart';

class Pipes extends PositionComponent
    with HasGameRef<FlappyDashAdventuresGame>, FlameBlocReader<GameSettingsCubit, GameSettingsState> {
  final List<Pipe> _pipes = [];
  final List<PointZone> pointZones = [];

  final _pipeFullSize = Vector2(52, 2080);
  final _groundHeight = 112;

  void updatePosition(double dt) {
    for (final pipe in _pipes) {
      pipe.position = Vector2(
        pipe.position.x - dt * bloc.state.gameSettings.gameplay.gameSpeed,
        pipe.position.y,
      );
    }

    for (final pointZone in pointZones) {
      pointZone.position = Vector2(
        pointZone.position.x - dt * bloc.state.gameSettings.gameplay.gameSpeed,
        pointZone.position.y,
      );
    }

    _pipes.removeWhere(
      (element) {
        final remove = element.position.x < -100;
        if (remove) {
          element.removeFromParent();
        }
        return remove;
      },
    );

    pointZones.removeWhere(
      (element) {
        final remove = element.position.x < -100;
        if (remove) {
          element.removeFromParent();
        }
        return remove;
      },
    );

    if ((_pipes.lastOrNull?.position.x ?? 0) < gameRef.size.x) {
      if (bloc.state.gameSettings.gameplay.hideTopPipes) {
        _createBottomPipe();
      } else {
        _createTopBottomPipe();
      }
    }
  }

  void reset() {
    debugPrint('Pipes reset');

    for (var element in _pipes) {
      element.removeFromParent();
    }
    _pipes.clear();

    for (var element in pointZones) {
      element.removeFromParent();
    }
    pointZones.clear();
  }

  void _createTopBottomPipe() {
    final pipesGroupDistance = bloc.state.gameSettings.gameplay.distanceBetweenPipeGroups;
    final minPipeHeight = bloc.state.gameSettings.gameplay.minPipeHeight;
    final gapBetweenPipes = bloc.state.gameSettings.gameplay.gapBetweenPipes;
    final maxRandomGapRange = bloc.state.gameSettings.gameplay.maxRandomGapRange;

    var lastPipePosition = _pipes.lastOrNull?.position.x ?? gameRef.size.x - pipesGroupDistance;
    lastPipePosition += pipesGroupDistance;

    double gapCenterPosition =
        min(maxRandomGapRange, gameRef.size.y - minPipeHeight * 2 - _groundHeight - gapBetweenPipes) *
                Random().nextDouble() +
            minPipeHeight +
            gapBetweenPipes * 0.5;

    final topPipe = Pipe(
      pipePosition: PipePosition.top,
      size: _pipeFullSize,
      position: Vector2(lastPipePosition, (gapCenterPosition - gapBetweenPipes * 0.5) - _pipeFullSize.y),
    );
    add(topPipe);
    _pipes.add(topPipe);

    final bottomPipe = Pipe(
      pipePosition: PipePosition.bottom,
      size: _pipeFullSize,
      position: Vector2(
        lastPipePosition,
        min(gapCenterPosition + gapBetweenPipes * 0.5, gameRef.size.y - _groundHeight),
      ),
    );
    add(bottomPipe);
    _pipes.add(bottomPipe);

    final bonusZone = PointZone(
      size: Vector2(_pipeFullSize.x, gapBetweenPipes),
      position: Vector2(lastPipePosition, gapCenterPosition - gapBetweenPipes * 0.5),
      visualizeAudioCues: bloc.state.gameSettings.video.visualizeAudioCues,
      onPlayerCollisionStart: bloc.state.gameSettings.gameplay.autoOpenPipes
          ? (pointZone) {
              const offset = 20;

              pointZone.height = pointZone.height + 2 * offset;
              pointZone.y -= offset;

              bottomPipe.y += offset;
              topPipe.y -= offset;
            }
          : null,
    );
    add(bonusZone);
    pointZones.add(bonusZone);
  }

  void _createBottomPipe() {
    final pipesGroupDistance = bloc.state.gameSettings.gameplay.distanceBetweenPipeGroups;
    final minPipeHeight = bloc.state.gameSettings.gameplay.minPipeHeight;
    final maxRandomGapRange = bloc.state.gameSettings.gameplay.maxRandomGapRange;

    var lastPipe = _pipes.lastOrNull;
    var lastPipePosition = lastPipe?.position.x ?? gameRef.size.x - pipesGroupDistance;
    lastPipePosition += pipesGroupDistance;

    double gapCenterPosition =
        min(maxRandomGapRange, gameRef.size.y - minPipeHeight - _groundHeight) * Random().nextDouble() + minPipeHeight;

    final pipe = Pipe(
      pipePosition: lastPipe?.pipePosition == PipePosition.bottom ? PipePosition.top : PipePosition.bottom,
      size: _pipeFullSize,
      position: Vector2(
        lastPipePosition,
        min(
            gapCenterPosition,
            lastPipe?.pipePosition == PipePosition.bottom
                ? gapCenterPosition - _pipeFullSize.y
                : gameRef.size.y - _groundHeight),
      ),
    );
    add(pipe);
    _pipes.add(pipe);

    late PointZone bonusZone = PointZone(
      size: Vector2(
        _pipeFullSize.x,
        pipe.pipePosition == PipePosition.bottom ? pipe.position.y : gameRef.size.y - _groundHeight - pipe.position.y,
      ),
      position: Vector2(
        pipe.position.x,
        pipe.pipePosition == PipePosition.bottom ? 0 : pipe.position.y + _pipeFullSize.y,
      ),
      onPlayerCollisionStart: bloc.state.gameSettings.gameplay.autoOpenPipes
          ? (pointZone) {
              const offset = 20;

              pointZone.height = pointZone.height + 2 * offset;
              pointZone.y -= offset;

              if (pipe.pipePosition == PipePosition.bottom) {
                pipe.y += offset;
              } else {
                pipe.y -= offset;
              }
            }
          : null,
    );

    add(bonusZone);
    pointZones.add(bonusZone);
  }
}

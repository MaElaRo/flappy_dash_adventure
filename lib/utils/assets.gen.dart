/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAudioGen {
  const $AssetsAudioGen();

  /// File path: assets/audio/chime.wav
  String get chime => 'assets/audio/chime.wav';

  /// File path: assets/audio/die.ogg
  String get dieOgg => 'assets/audio/die.ogg';

  /// File path: assets/audio/die.wav
  String get dieWav => 'assets/audio/die.wav';

  /// File path: assets/audio/drum.wav
  String get drum => 'assets/audio/drum.wav';

  /// File path: assets/audio/hat.wav
  String get hat => 'assets/audio/hat.wav';

  /// File path: assets/audio/hit.ogg
  String get hitOgg => 'assets/audio/hit.ogg';

  /// File path: assets/audio/hit.wav
  String get hitWav => 'assets/audio/hit.wav';

  /// File path: assets/audio/point.ogg
  String get pointOgg => 'assets/audio/point.ogg';

  /// File path: assets/audio/point.wav
  String get pointWav => 'assets/audio/point.wav';

  /// File path: assets/audio/swoosh.ogg
  String get swooshOgg => 'assets/audio/swoosh.ogg';

  /// File path: assets/audio/swoosh.wav
  String get swooshWav => 'assets/audio/swoosh.wav';

  /// File path: assets/audio/trumpet.mp3
  String get trumpet => 'assets/audio/trumpet.mp3';

  /// File path: assets/audio/wing.ogg
  String get wingOgg => 'assets/audio/wing.ogg';

  /// File path: assets/audio/wing.wav
  String get wingWav => 'assets/audio/wing.wav';

  /// List of all assets
  List<String> get values => [
        chime,
        dieOgg,
        dieWav,
        drum,
        hat,
        hitOgg,
        hitWav,
        pointOgg,
        pointWav,
        swooshOgg,
        swooshWav,
        trumpet,
        wingOgg,
        wingWav
      ];
}

class $AssetsSpritesGen {
  const $AssetsSpritesGen();

  /// File path: assets/sprites/0.png
  AssetGenImage get a0 => const AssetGenImage('assets/sprites/0.png');

  /// File path: assets/sprites/1.png
  AssetGenImage get a1 => const AssetGenImage('assets/sprites/1.png');

  /// File path: assets/sprites/2.png
  AssetGenImage get a2 => const AssetGenImage('assets/sprites/2.png');

  /// File path: assets/sprites/3.png
  AssetGenImage get a3 => const AssetGenImage('assets/sprites/3.png');

  /// File path: assets/sprites/4.png
  AssetGenImage get a4 => const AssetGenImage('assets/sprites/4.png');

  /// File path: assets/sprites/5.png
  AssetGenImage get a5 => const AssetGenImage('assets/sprites/5.png');

  /// File path: assets/sprites/6.png
  AssetGenImage get a6 => const AssetGenImage('assets/sprites/6.png');

  /// File path: assets/sprites/7.png
  AssetGenImage get a7 => const AssetGenImage('assets/sprites/7.png');

  /// File path: assets/sprites/8.png
  AssetGenImage get a8 => const AssetGenImage('assets/sprites/8.png');

  /// File path: assets/sprites/9.png
  AssetGenImage get a9 => const AssetGenImage('assets/sprites/9.png');

  /// File path: assets/sprites/background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/sprites/background.png');

  /// File path: assets/sprites/base.png
  AssetGenImage get base => const AssetGenImage('assets/sprites/base.png');

  /// File path: assets/sprites/dash-downflap.png
  AssetGenImage get dashDownflap =>
      const AssetGenImage('assets/sprites/dash-downflap.png');

  /// File path: assets/sprites/dash-midflap.png
  AssetGenImage get dashMidflap =>
      const AssetGenImage('assets/sprites/dash-midflap.png');

  /// File path: assets/sprites/dash-upflap.png
  AssetGenImage get dashUpflap =>
      const AssetGenImage('assets/sprites/dash-upflap.png');

  /// File path: assets/sprites/pipe-green.png
  AssetGenImage get pipeGreen =>
      const AssetGenImage('assets/sprites/pipe-green.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        a0,
        a1,
        a2,
        a3,
        a4,
        a5,
        a6,
        a7,
        a8,
        a9,
        background,
        base,
        dashDownflap,
        dashMidflap,
        dashUpflap,
        pipeGreen
      ];
}

class Assets {
  Assets._();

  static const $AssetsAudioGen audio = $AssetsAudioGen();
  static const $AssetsSpritesGen sprites = $AssetsSpritesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size = null});

  final String _assetName;

  final Size? size;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

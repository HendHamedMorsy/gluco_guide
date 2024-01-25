/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsEnvGen {
  const $AssetsEnvGen();

  /// File path: assets/env/env_base.env
  String get envBase => 'assets/env/env_base.env';

  /// File path: assets/env/env_beta.env
  String get envBeta => 'assets/env/env_beta.env';

  /// File path: assets/env/env_dev.env
  String get envDev => 'assets/env/env_dev.env';

  /// File path: assets/env/env_prod.env
  String get envProd => 'assets/env/env_prod.env';

  /// List of all assets
  List<String> get values => [envBase, envBeta, envDev, envProd];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  $AssetsFontsLatoGen get lato => const $AssetsFontsLatoGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo-icon.png
  AssetGenImage get logoIcon =>
      const AssetGenImage('assets/images/logo-icon.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/quickly-blob.png
  AssetGenImage get quicklyBlob =>
      const AssetGenImage('assets/images/quickly-blob.png');

  /// List of all assets
  List<AssetGenImage> get values => [logoIcon, logo, quicklyBlob];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// List of all assets
  List<String> get values => [en];
}

class $AssetsFontsLatoGen {
  const $AssetsFontsLatoGen();

  /// File path: assets/fonts/Lato/Lato-Black.ttf
  String get latoBlack => 'assets/fonts/Lato/Lato-Black.ttf';

  /// File path: assets/fonts/Lato/Lato-BlackItalic.ttf
  String get latoBlackItalic => 'assets/fonts/Lato/Lato-BlackItalic.ttf';

  /// File path: assets/fonts/Lato/Lato-Bold.ttf
  String get latoBold => 'assets/fonts/Lato/Lato-Bold.ttf';

  /// File path: assets/fonts/Lato/Lato-BoldItalic.ttf
  String get latoBoldItalic => 'assets/fonts/Lato/Lato-BoldItalic.ttf';

  /// File path: assets/fonts/Lato/Lato-Italic.ttf
  String get latoItalic => 'assets/fonts/Lato/Lato-Italic.ttf';

  /// File path: assets/fonts/Lato/Lato-Light.ttf
  String get latoLight => 'assets/fonts/Lato/Lato-Light.ttf';

  /// File path: assets/fonts/Lato/Lato-LightItalic.ttf
  String get latoLightItalic => 'assets/fonts/Lato/Lato-LightItalic.ttf';

  /// File path: assets/fonts/Lato/Lato-Medium.ttf
  String get latoMedium => 'assets/fonts/Lato/Lato-Medium.ttf';

  /// File path: assets/fonts/Lato/Lato-Regular.ttf
  String get latoRegular => 'assets/fonts/Lato/Lato-Regular.ttf';

  /// File path: assets/fonts/Lato/Lato-Thin.ttf
  String get latoThin => 'assets/fonts/Lato/Lato-Thin.ttf';

  /// File path: assets/fonts/Lato/Lato-ThinItalic.ttf
  String get latoThinItalic => 'assets/fonts/Lato/Lato-ThinItalic.ttf';

  /// List of all assets
  List<String> get values => [
        latoBlack,
        latoBlackItalic,
        latoBold,
        latoBoldItalic,
        latoItalic,
        latoLight,
        latoLightItalic,
        latoMedium,
        latoRegular,
        latoThin,
        latoThinItalic
      ];
}

class Assets {
  Assets._();

  static const $AssetsEnvGen env = $AssetsEnvGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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

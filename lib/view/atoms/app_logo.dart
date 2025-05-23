import 'package:flutter/material.dart';
import '../../gen/assets.gen.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Assets.images.logo.image(scale: 2));
  }
}

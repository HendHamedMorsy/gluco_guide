import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../gen/colors.gen.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({super.key, this.color});

  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitRipple(
        color: color ?? ColorName.primaryColor,
      ),
    );
  }
}

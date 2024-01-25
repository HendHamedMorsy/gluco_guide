import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../constants/app_constants.dart';

class Helpers {
  Helpers._();
  static final Helpers shared = Helpers._();

  void delaySplashScreenBy([Duration? duration]) async {
    Future<void>.delayed(duration ?? AppConstants.shared.splashDelayTime, () {
      FlutterNativeSplash.remove();
    });
  }

  bool isKeyboardOpen(BuildContext context) {
    if (MediaQuery.of(context).viewInsets.bottom == 0.0) {
      return false;
    }
    return true;
  }

  void dismissKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  bool isAfter2PM() {
    return TimeOfDay.now().hour > AppConstants.shared.twoPMInHours;
  }
}

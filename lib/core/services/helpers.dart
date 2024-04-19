import 'package:flutter/material.dart';
import '../constants/app_constants.dart';

class Helpers {
  Helpers._();
  static final Helpers shared = Helpers._();

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

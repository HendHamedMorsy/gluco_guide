import 'dart:developer';

import 'package:flutter/foundation.dart';


class LogManager {
  LogManager._();

  static void logToConsole(Object? value, [String? title = "log "]) {
    if (kDebugMode) {
      debugPrint("$title:\t ${value.toString()}");
      log(
        " ${value.toString()}",
        name: title ?? "",
        time: DateTime.now(),
      );
    }
  }
}

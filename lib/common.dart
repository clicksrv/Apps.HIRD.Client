import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hwinfo_remote_display/main.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  splashColor: Colors.amber,
);

final lightTheme = ThemeData(
  brightness: Brightness.light,
  splashColor: Colors.amber,
);

enum PrintLevel { trace, debug, info }

void logger(Object obj, [PrintLevel printLevel = PrintLevel.info]) {
  if (printLevel.index >= minPrintLevel.index) {
    if (kDebugMode) {
      print('${printLevel.name}: $obj');
    }
  }
}

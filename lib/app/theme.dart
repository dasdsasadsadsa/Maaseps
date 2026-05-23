import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.amber,
    brightness: Brightness.light,
    cardTheme: const CardThemeData(elevation: 2),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.amber,
    brightness: Brightness.dark,
  );
}

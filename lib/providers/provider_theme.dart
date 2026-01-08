import 'package:flutter/material.dart';

final ThemeData light = ThemeData(colorSchemeSeed: Colors.orange, useMaterial3: true);

final ThemeData dark = ThemeData.dark(useMaterial3: true);

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  ThemeData getTheme() => _themeData;

  void toggleTheme() {
    _themeData = (_themeData == dark) ? light : dark;
    notifyListeners();
  }

  IconData getThemeIcon() {
    return (_themeData == dark) ? Icons.dark_mode : Icons.light_mode;
  }

  String getText() {
    return (_themeData == dark) ? 'Dark' : 'Light';
  }
}

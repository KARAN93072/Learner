import 'package:flutter/material.dart';

class ThemeChangerProvider extends ChangeNotifier {
  // ThemeMode _themeMode = ThemeMode.light;
  // ThemeMode get themeMode => _themeMode;
  // void setTheme(themeMode) {
  //   _themeMode = themeMode;
  //   notifyListeners();
  // }

  bool switchOn = false;
  // ThemeData _onTheme = ThemeData.light();
  // ThemeData get onTheme => _onTheme;
  ThemeData onTheme = ThemeData.light();
  setTheme(onTheme) {
    onTheme = onTheme;
    notifyListeners();
  }
}

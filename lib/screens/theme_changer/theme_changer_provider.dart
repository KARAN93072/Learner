import 'package:flutter/material.dart';

class ThemeChangerProvider extends ChangeNotifier {
  dynamic themeState = false;
  // dynamic get themeState => _themeState;

  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}

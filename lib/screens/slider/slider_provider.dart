import 'dart:ffi';

import 'package:flutter/widgets.dart';

class SliderProvider extends ChangeNotifier {
  // double _sValue = 1.0;
  // double get sValue => _sValue;
  // setSlider(double newValue) {
  //   _sValue = newValue;
  //   notifyListeners();
  // }

  double _sValue = 1.0;
  double get sValue => _sValue;
  setValue(newValue) {
    _sValue = newValue;
    notifyListeners();
  }
}

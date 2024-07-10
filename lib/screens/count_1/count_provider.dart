import 'package:flutter/widgets.dart';

class CountProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;
  setCount() {
    _count++;
    notifyListeners();
  }
}

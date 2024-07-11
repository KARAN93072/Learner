import 'package:flutter/material.dart';

class FevoriteProvider extends ChangeNotifier {
  List<String> _userList = ['Harsh', 'Vaishnavi', 'Akash', 'Om', 'Pavan'];
  List<String> get userList => _userList;

  List<int> _listSelected = [];
  List<int> get listSelected => _listSelected;
  void setSelectedIndex(int value) {
    _listSelected.add(value);
    notifyListeners();
  }

  ///////////////////////////
  int _itemIndex = 0;
  int get itemIndex => _itemIndex;
  void newItemIndex(int indexValue) {
    _itemIndex == indexValue;
    notifyListeners();
  }
}

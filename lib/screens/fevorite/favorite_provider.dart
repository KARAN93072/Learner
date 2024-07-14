import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List _listUsers = ['harsh', 'Nikhil', 'vaishnavi', 'Om', 'Akash', 'pavan'];
  List get listUsers => _listUsers;
  List savedUsers = [];
  setLiked(userIndex) {
    savedUsers.add(userIndex);
    notifyListeners();
  }

  setUnliked(userIndex) {
    savedUsers.contains(userIndex);
    savedUsers.remove(userIndex);
    notifyListeners();
  }
}

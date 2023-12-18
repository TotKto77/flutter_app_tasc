import 'package:flutter/material.dart';

class BottomNavigationBarProvider with ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex =>
      _currentIndex; // Укажите тип возвращаемого значения как int

  set currentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}

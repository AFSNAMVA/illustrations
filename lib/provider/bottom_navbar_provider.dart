import 'package:flutter/material.dart';

class BottomNavbarProvider with ChangeNotifier {
  int _selectedIndex = 1;

  int get selectedIndex => _selectedIndex;

  void navigateBottomBar(int index) {
    
    _selectedIndex = index;
    notifyListeners();
  }
}

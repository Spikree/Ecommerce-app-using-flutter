import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  String _selectedColor = "white";

  String get selectedColor => _selectedColor;

  void setThemeColor(String color) {
    _selectedColor = color;
    notifyListeners();
  }
}

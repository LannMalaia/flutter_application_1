import 'package:flutter/material.dart';

class Option extends ChangeNotifier {
  double _fontSizeLevel = 1;

  void changeFontSize(double value) {
    _fontSizeLevel = value.clamp(1, 5);
    notifyListeners();
  }

  double getFontSize() {
    return _fontSizeLevel;
  }
}
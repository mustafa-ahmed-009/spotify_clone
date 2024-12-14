import 'package:flutter/material.dart';

extension BrightnessMode on BuildContext {
  bool isDarkMode() {
    return Theme.of(this).brightness == Brightness.dark; 
  }
}

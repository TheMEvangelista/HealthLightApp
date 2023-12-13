import 'package:flutter/material.dart';

extension SizeScreen on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double percentWidth(double percentWidth) => screenWidth * percentWidth;
  double percentHeight(double percentHeight) => screenWidth * percentHeight;
}

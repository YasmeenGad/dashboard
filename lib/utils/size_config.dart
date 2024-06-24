import 'package:flutter/material.dart';

class SizeConfig {
  static double desktop = 1000.0;
  static double tablet = 700.0;

  static late double screenWidth;
  static late double screenHeight;
  static init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}

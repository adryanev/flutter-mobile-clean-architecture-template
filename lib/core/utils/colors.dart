import 'package:flutter/material.dart';

class AppColor {
  static const primary = Color(0xFF006BB3);
  static const blueLightest = Color(0xFFD7F4FE);
  static const blueLighter = Color(0xFFAAD9E9);
  static const blue = Color(0xFF62B8F6);
  static const blueDark = Color(0xFF3C99DD);
  static const blueDarker = Color(0xFF2C79C1);
  static const blueDarkest = Color(0xFF1B2541);
  static const white = Color(0xFFFFFFFF);

  static const pink = Color(0xFFFEE3D7);
  static const brownLight = Color(0xFFE9C8AA);
  static const orange = Color(0xFFF69762);
  static const orangeDark = Color(0xFFDD893C);
  static const orangeDarkest = Color(0xFFC1502C);

  static const blueBackgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [blue, blueDarker],
    stops: [
      0,
      0.7,
    ],
  );
}

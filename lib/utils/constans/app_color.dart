import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color dark = Color(0xFF191A26);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grey = Color(0xFF989A9D);
  static const Color backgroundColor = Color(0xFFF0F4F4);
  static const Color transparent = Colors.transparent;
  static const Color primary = Color(0xffFD7C4B);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFFFFAC5F), Color(0xFFFF4D3C)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

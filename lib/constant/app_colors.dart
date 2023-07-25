import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFFEC000);

  // Background colors
  static const Color lightBackground = Color(0xFFF7F8F8);
  static const Color lightBackground2 = Color(0xFFDBDBDB);
  static const Color darkBackground = Color(0xFF373737);
  static const Color darkBackground2 = Color(0xFF434343);

  // Font colors
  static const Color lightFont = Color(0xFF333333);
  static const Color lightFont2 = Color(0xFF666666);
  static const Color darkFont = Color(0xFFE2E7E7);
  static const Color darkFont2 = Color(0xFFC8C3C3);

  // Card colors
  static const Color lightCard = Color(0xFFDBDBDB);
  static const Color darkCard = Color(0xFF434343);

  // Icon colors
  static const Color lightIcon = lightFont;
  static const Color darkIcon = darkFont;

  // Extra colors
  static const Color yellow = Color(0xFFFEC000);
  static const Color green = Color(0xFF5FCC38);
  static const Color blue = Color(0xFF5CB9F5);
  static const Color red = Color(0xFFF32F2F);

  // Material Colors
  static MaterialColor primaryMaterialColor = MaterialColor(
    primary.value,
    {
      50: primary.withOpacity(.1), //10%
      100: primary.withOpacity(.2), //20%
      200: primary.withOpacity(.3), //30%
      300: primary.withOpacity(.4), //40%
      400: primary.withOpacity(.5), //50%
      500: primary.withOpacity(.6), //60%
      600: primary.withOpacity(.7), //70%
      700: primary.withOpacity(.8), //80%
      800: primary.withOpacity(.9), //90%
      900: primary, //100%
    },
  );
}

import 'package:flutter/material.dart';

class AppSizes {
  // Font Size
  static const fontSize = _FontSize();

  // Padding Size
  static const paddings = _Paddings();

  // Radius Size
  static const radius = _RadiusSize();

  //
}

class _FontSize {
  const _FontSize();
  //
  double get titleSize => 20;
  double get subtitleSize => 19;
  double get largeSize => 26;
  double get normalSize => 15;
  double get smallSize => 12;
}

class _Paddings {
  const _Paddings();
  //=
  EdgeInsets get safeAreaPadding =>
      const EdgeInsets.symmetric(horizontal: 24, vertical: 0);
  //
  EdgeInsets get textfieldPadding =>
      const EdgeInsets.symmetric(horizontal: 15, vertical: 5);
  //
  EdgeInsets get buttonPadding =>
      const EdgeInsets.symmetric(horizontal: 15, vertical: 15);
  // other padding values here
}

class _RadiusSize {
  const _RadiusSize();
  //
  BorderRadius get buttonRadius => BorderRadius.circular(5);
  BorderRadius get textfieldRadius => BorderRadius.circular(5);
}

import 'package:flutter/material.dart';

import '../shared/converters/hexColor.dart';

class Palette {
  static final ThemeData appTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      color: transparent,
      iconTheme: IconThemeData(color: black),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(black),
    )),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: Palette.black,
    ),
  );

  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color lightBlack = Color(0x3600000F);
  static Color silver = HexColor('#7B7B7B');
  static Color silver1 = HexColor('#E6E6E6');
  static const Color transparent = Colors.transparent;
}

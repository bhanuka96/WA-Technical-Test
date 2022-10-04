import 'package:flutter/material.dart';

import '../constants/palette.dart';
import '../main.dart';

class CustomSnackBar {
  static showSnackBar(String? title, {Color backgroundColor = Palette.black, Color textColor = Palette.white}) async {
    if ((title ?? '').isNotEmpty) {
      await removeSnackBar();
      rootScaffoldMessengerKey.currentState!
          .showSnackBar(SnackBar(behavior: SnackBarBehavior.floating, content: Text(title!, style: TextStyle(color: textColor)), backgroundColor: backgroundColor));
    }
  }

  static removeSnackBar() {
   return rootScaffoldMessengerKey.currentState!.clearSnackBars();
  }
}

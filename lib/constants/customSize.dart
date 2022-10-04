import 'package:flutter/cupertino.dart';

class CustomSize {
  static double width(BuildContext context) => MediaQuery.of(context).size.width;

  static double height(BuildContext context) => MediaQuery.of(context).size.height;

  static double statusBarHeight(BuildContext context) => MediaQuery.of(context).padding.top;

  static bool isKeyboardOpen(BuildContext context) => MediaQuery.of(context).viewInsets.bottom > 0;
}

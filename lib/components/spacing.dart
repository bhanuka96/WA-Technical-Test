import 'package:flutter/material.dart';

class Spacing extends SizedBox {
  final double? height;
  final double? width;

  const Spacing({super.key, this.height, this.width}) : super(height: height, width: width);
}

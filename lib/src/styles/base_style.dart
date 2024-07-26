import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class BaseStyle {
  static const mainColor = Color(0xFF01BDD6);

  static Style titleStyle() => Style($text.style.color(BaseStyle.mainColor),
      $text.style.fontSize(40), $text.style.fontWeight.w900());
}

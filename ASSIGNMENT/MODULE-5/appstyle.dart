import 'package:flutter/material.dart';
import 'appcolour.dart';

class CustomStyle
{
  static AppStyle(
      {double fontSize = 16,
        Color color = primeColor,
        FontWeight fontWeight = FontWeight.bold})
  {
    TextStyle textStyle =
    TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight);
    return textStyle;
  }
}
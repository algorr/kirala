import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#006AFF");
  static Color darkGrey = HexColor.fromHex("#B2B2B2");
  static Color grey = HexColor.fromHex("#C6C6C6");
  static Color dividerColor = HexColor.fromHex("#EDE8E9");
  static Color grey1 = HexColor.fromHex("#484848");
  static Color lightGrey = HexColor.fromHex("#908E8E");
  static Color black = HexColor.fromHex("#3A3335");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString';
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

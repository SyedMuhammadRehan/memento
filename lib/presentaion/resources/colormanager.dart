import 'package:flutter/material.dart';

class ColorManager {
  static Color red = Colors.red;

  static Color black = Colors.black;
  static Color green = Colors.green;
  static Color primary = HexColor.fromHex('#149FF4');
  static Color darkgrey = HexColor.fromHex("#525252");

  static Color grey = HexColor.fromHex('#737477');
  static Color notesgrey = HexColor.fromHex('#F6F2F2');
  static Color lightGrey = HexColor.fromHex('#9E9E9E');
  static Color primaryOpacity70 = HexColor.fromHex('#B3ED9728');

  static Color darkprimary = HexColor.fromHex('#d17d11');

  static Color grey1 = HexColor.fromHex("#F6F2F2");

  static Color grey2 = HexColor.fromHex('#797979');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color error = HexColor.fromHex('#e61f34');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');

    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}

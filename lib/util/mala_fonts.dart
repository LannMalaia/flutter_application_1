import 'package:flutter/material.dart';
import 'package:flutter_application_1/option.dart';
import 'package:google_fonts/google_fonts.dart';

class MalaFonts {
  static TextStyle getTitleFont({
    required Option option,
    FontWeight? fontWeight,
    Color? color,
  }) {
    double fontSize = 20 + option.getFontSize().toDouble() * 4;
    return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
    // return GoogleFonts.gamjaFlower(fontSize: fontSize, fontWeight: fontWeight, color: color);
    // return GoogleFonts.singleDay(fontSize: fontSize, fontWeight: fontWeight, color: color);
  }
  static TextStyle getDescFont({
    required Option option,
    FontWeight? fontWeight,
    Color? color,
  }) {
    double fontSize = 16 + option.getFontSize().toDouble() * 2;
    return TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color);
    // return GoogleFonts.gamjaFlower(fontSize: fontSize, fontWeight: fontWeight, color: color);
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {

static Text heading(
      {String text = '',
      double fontSize = 12,
      FontWeight weight = FontWeight.w800,
      Color color = Colors.black,
      double? height,
      TextAlign align = TextAlign.center}) {
    return Text(text,
        textAlign: align,
        style: GoogleFonts.montserrat(
            fontSize: fontSize,
            fontWeight: weight,
            color: color,
            height: height));
  }

  static Text text(
      {String text = '',
      double fontSize = 12,
      FontWeight weight = FontWeight.w800,
      Color color = Colors.black,
      double? height,
      TextAlign align = TextAlign.center}) {
    return Text(text,
        textAlign: align,
        style: GoogleFonts.manrope(
            fontSize: fontSize,
            fontWeight: weight,
            color: color,
            height: height));
  }

}

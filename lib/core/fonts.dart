import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle customFont({
  FontWeight fontWeight = FontWeight.normal,
  double fontSize = 14.0,
  Color color = Colors.white
}) {
  return GoogleFonts.roboto(
    fontWeight: fontWeight,
    fontSize: fontSize,
    color: color,
    
  );
}
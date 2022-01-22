import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetlyTextTheme {
  static const TextStyle h1 = TextStyle(
    fontFamily: 'TT Norms',
    fontWeight: FontWeight.bold,
    letterSpacing: 0.9,
    fontSize: 28,
  );
  static const TextStyle subtitle = TextStyle(
    fontFamily: 'TT Norms',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.6,
  );
  static const TextStyle headline = TextStyle(
    fontFamily: 'TT Norms',
    fontSize: 12,
    letterSpacing: 0.6,
    color: Colors.white,
  );

  static TextStyle petly = GoogleFonts.lobster(
    fontWeight: FontWeight.bold,
    fontSize: 36,
    color: Colors.black87,
  );
}

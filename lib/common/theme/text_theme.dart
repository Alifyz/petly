import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetlyTextTheme {
  static TextStyle h1 = GoogleFonts.lato(
    fontWeight: FontWeight.bold,
    letterSpacing: 0.9,
    fontSize: 28,
  );
  static TextStyle subtitle = GoogleFonts.lato(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.6,
  );
  static TextStyle headline = GoogleFonts.lato(
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

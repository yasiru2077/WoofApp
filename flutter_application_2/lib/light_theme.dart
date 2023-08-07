import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey[300]!,
    primary: Colors.red[50]!,
    secondary: Colors.black,
  ),
  fontFamily: GoogleFonts.montserrat()
      .fontFamily, // Using the "Poppins" font as an example
);

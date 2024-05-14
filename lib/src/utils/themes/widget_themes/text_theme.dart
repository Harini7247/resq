import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme{
  static TextTheme lightTheme=TextTheme(
    subtitle1: GoogleFonts.montserrat(
      color:Colors.black87
    ),
    subtitle2: GoogleFonts.poppins(
      color:Colors.blueAccent
    )
  );
  static TextTheme darkTheme=TextTheme(
      subtitle1: GoogleFonts.montserrat(
          color:Colors.deepOrange
      ),
      subtitle2: GoogleFonts.poppins(
          color:Colors.greenAccent
      )
  );
}
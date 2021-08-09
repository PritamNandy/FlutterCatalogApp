import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.poppinsTextTheme(),
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme
        ),
      );

      static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

      static Color creamColor = Color(0xfff5f5f5);
      static Color darkBluish = Color(0xff403b58);
}
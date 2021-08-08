import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tut/pages/homaPage.dart';
import 'package:tut/pages/loginPage.dart';
import 'package:tut/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.poppinsTextTheme(),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.HomeRoute: (context) => HomePage()
      },
    );
  }
}
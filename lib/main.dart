import 'package:flutter/material.dart';
import 'package:flutter_revision_upto_18/pages/HomePage.dart';
import 'package:flutter_revision_upto_18/pages/LoginPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/login",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}

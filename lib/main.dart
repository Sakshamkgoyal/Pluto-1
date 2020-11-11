import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pluto/intro/intro.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'em'),
      initialRoute: "home",
      routes: {
        "home" : (context)  => intro(),
    },
  debugShowCheckedModeBanner: false,
    );
  }
}
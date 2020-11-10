import 'package:flutter/material.dart';
import 'package:pluto/screens/homepage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "home",
      routes: {
        "home" : (context)  => HomePage(),
    },
  debugShowCheckedModeBanner: false,
    );
  }
}
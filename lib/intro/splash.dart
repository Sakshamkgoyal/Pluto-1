import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:pluto/intro/intro.dart';

class splash extends StatefulWidget {
  @override
  _splashState createState() => _splashState();
}

class _splashState extends State<splash> {

  String _animationName = "splash";
  @override

  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 4),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>intro())),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181818),
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FlareActor(
              "assets/splash.flr",
              fit: BoxFit.cover,
              alignment: Alignment.center,
              animation: _animationName,
            )
          ],
        ),
      ),
    );
  }
}

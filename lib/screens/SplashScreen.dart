import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:videoshoping/res.dart';
import 'package:videoshoping/screens/registerandlogin/login.dart';
import 'package:videoshoping/screens/registerandlogin/registration.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController rotationController;

  @override
  void initState() {
    rotationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    //rotationController = AnimationController(duration: Duration(seconds: 5), upperBound: pi * 2, vsync: this);
    rotationController.forward(from: 0.0); // it starts the animation
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Login_page())));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Res.splash), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.only(top:300.0),
              child: Center(
                child: Stack(
                  children: <Widget>[
                    SpinKitRotatingCircle(
                      color: Colors.white,
                      size: 50.0,
                    )
                  ],
                ),
              ),
            ))
        ),
      );


  }
}

import 'package:flutter/material.dart';
import 'package:videoshoping/screens/SplashScreen.dart';
import 'package:videoshoping/screens/orders/orderhistory.dart';

void main()=>runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: SplashScreen(),
    );
  }
}
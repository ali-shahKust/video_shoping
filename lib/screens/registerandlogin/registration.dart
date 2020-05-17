import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:videoshoping/appcolor/Constant.dart';

import '../../res.dart';

class SignUp_Page extends StatefulWidget {
  @override
  _SignUp_PageState createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Res.background), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  ),
                  Container(
                    color: Constant.appColor,
                    height: 300,
                    width: 300,
                  ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}

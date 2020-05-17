import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        child: DefaultTabController(
          length: 2,
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
                    SizedBox(height: 20,),
                    Container(
                      height: 300,
                      width: 320,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Constant.appColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 25,),
                          topTabBar(),
                          Expanded(
                            child: TabBarView(
                              children: [
                                emailSignUp(),
                                phoneSignUp(),

                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left:18.0,right : 18),
              child: ButtonTheme(
                buttonColor: Constant.selectedTab,
                minWidth:double.infinity,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("SIGN UP",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19
                  ),),
                ),
              ),
            )
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget topTabBar() {
    return Container(
      height: 40,
      color: Constant.tabscolor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width /35,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
            TabBar(
              indicatorColor:Constant.tabscolor,
              labelColor: Constant.selectedTab,
              unselectedLabelColor: Colors.white54,
              tabs: [
                Tab(
                  text: "Email",
                ),
                Tab(
                  text: "Phone No",
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget emailSignUp() {
    return Container(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: TextField(

                keyboardType: TextInputType.text,
                onChanged: (String value) {},
                decoration: InputDecoration(
                    hintText: "Name",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child:FaIcon(FontAwesomeIcons.user,size: 18.0,),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: TextField(

                keyboardType: TextInputType.emailAddress,
                onChanged: (String value) {},
                decoration: InputDecoration(
                    hintText: "Email",

                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child:FaIcon(FontAwesomeIcons.envelope,size: 18.0,),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: TextField(
                obscureText: true,

                onChanged: (String value) {},
                decoration: InputDecoration(
                    hintText: "Password",

                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child:FaIcon(FontAwesomeIcons.eyeSlash,size: 18.0,),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget phoneSignUp() {
    return Container(
      child: Column(

        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: TextField(

                keyboardType: TextInputType.text,
                onChanged: (String value) {},
                decoration: InputDecoration(
                    hintText: "Name",
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child:FaIcon(FontAwesomeIcons.user,size: 18.0,),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: TextField(

                keyboardType: TextInputType.phone,
                onChanged: (String value) {},
                decoration: InputDecoration(
                    hintText: "Phone No",

                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child:FaIcon(FontAwesomeIcons.phone,size: 18.0,),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: TextField(
                obscureText: true,

                onChanged: (String value) {},
                decoration: InputDecoration(
                    hintText: "Password",

                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child:FaIcon(FontAwesomeIcons.eyeSlash,size: 18.0,),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

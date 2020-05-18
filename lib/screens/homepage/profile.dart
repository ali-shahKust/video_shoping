import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videoshoping/appcolor/Constant.dart';
import 'package:videoshoping/res.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.appColor,
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Container(
                height: 200,
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
                child: ListView(
                  children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 36,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                          radius: 35,
                              backgroundColor: Colors.white,
                          backgroundImage: AssetImage(Res.profilepic)
                ),
                        ),
                      ),
                      SizedBox(width: 200,),
                      Padding(
                        padding: const EdgeInsets.only(bottom:18.0),
                        child: FaIcon(FontAwesomeIcons.cog,size: 22.0,color: Colors.white70,),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:25.0,top:35),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text('141',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('My Whishlist',style: TextStyle(fontSize: 10,fontWeight: FontWeight.normal,color: Colors.white60),),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Container(height: 40,width: 2,color: Colors.white60,),
                          ),
                          Column(
                            children: <Widget>[
                              Text('101',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Followed Store',style: TextStyle(fontSize: 10,fontWeight: FontWeight.normal,color: Colors.white60),),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:12.0),
                            child: Container(height: 40,width: 2,color: Colors.white60,),
                          ),
                          Column(
                            children: <Widget>[
                              Text('14k',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Recently Viewed',style: TextStyle(fontSize: 10,fontWeight: FontWeight.normal,color: Colors.white60),),
                              ),
                            ],
                          ),

                        ],

                      ),
                    ),
                  )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 120,
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
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:18.0,top:12),
                      child: Text('My Wallet',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:25.0,top:35),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text('Current Balance',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white60),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('340\$.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Constant.btnColor),),
                                ),
                              ],
                            ),
                            SizedBox(width: 100,),
                            Column(
                              children: <Widget>[
                                Text('Total Spent',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white60),),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('100\$.00',style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal,color: Constant.btnColor),),
                                ),
                              ],
                            ),

                          ],

                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 150,
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
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:18.0,top:12),
                      child: Text('My Orders',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:2.0,top:35),
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage(Res.card)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('To pay',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.white60),),
                                  ),

                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage(Res.box)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('To Receive',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.white60),),
                                  ),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage(Res.ship)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('To Ship',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.white60),),
                                  ),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  CircleAvatar(
                                      radius: 25,
                                      backgroundColor: Colors.transparent,
                                      backgroundImage: AssetImage(Res.review)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('To Review',style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.white60),),
                                  ),

                                ],
                              ),
                            ),
                          ],

                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(bottom:18.0),
                child: Container(
                  height: 150,
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:18.0,top:12),
                        child: Text('My Orders',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 15,
                            itemBuilder: (BuildContext context, int index) {
                              return buildHorizontal(context, index);
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ],)
        ],
      ),
    );
  }
  Widget buildHorizontal(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://image.freepik.com/free-vector/abstract-dynamic-pattern-wallpaper-vector_53876-59131.jpg',
              height: 150.0,
              width: 150.0,
            ),
          ),
        ),

      ],
    );
  }


}
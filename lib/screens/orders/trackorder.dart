import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videoshoping/appcolor/Constant.dart';

class Track_Order extends StatefulWidget {
  @override
  _Track_OrderState createState() => _Track_OrderState();
}
final primary = Constant.appColor;
final stepperline = Constant.btnColor;
class _Track_OrderState extends State<Track_Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
    title: Center(
    child: Text('Track Order'),
    ),
    backgroundColor: primary,
    ),
      backgroundColor: primary,
      body: Container(
        child:mStepperDetails(),
      ),
    );
  }

  Widget mStepperDetails(){
    return Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 100,),
              Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:18.0,right: 18,top:22),
                    child: Row(
                      children: <Widget>[
                      SizedBox(width: 12,),
                    Padding(
                      padding: const EdgeInsets.only(left: 22.0),
                      child: ClipOval(
                        child: Material(
                          color: Colors.white, // button color
                          child: InkWell(
                            splashColor:  Colors.white, // inkwell color
                            child: SizedBox(width: 30, height: 30, child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.history,
                                size: 22.0,
                                color: Colors.red,
                              ),
                            ),),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                  SizedBox(width: 22,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Order Received',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Ubuntu-Medium',
                              color: Colors.white
                            ),),
                            SizedBox(height: 5,),
                            Row(
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.clock,
                                  size: 18.0,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 15,),
                                Text('9 am, 9 May',style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Ubuntu-Light',
                                    color: Colors.white

                                ),),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:218.0),
                    child: Container(
                      width: 0.8,
                      height: 12,
                      color: stepperline,
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:218.0,top: 12),
                    child: Container(
                      width: 0.8,
                      height: 12,
                      color: stepperline,
                    ),

                  ),    Padding(
                    padding: const EdgeInsets.only(right:218.0),
                    child: Container(
                      width: 0.8,
                      height: 12,
                      color: stepperline,
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:218.0,top: 12),
                    child: Container(
                      width: 0.8,
                      height: 12,
                      color: stepperline,
                    ),

                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:18.0,right: 18,top:22),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0),
                          child: ClipOval(
                            child: Material(
                              color: Colors.white, // button color
                              child: InkWell(
                                splashColor:  Colors.white, // inkwell color
                                child: SizedBox(width: 30, height: 30, child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.solidMap,
                                    size: 22.0,
                                    color: Colors.red,
                                  ),
                                ),),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                       SizedBox(width: 22,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('On the way',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Ubuntu-Medium',
                                color: Colors.white
                            ),),
                            SizedBox(height: 5,),
                            Row(
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.clock,
                                  size: 18.0,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 15,),
                                Text('9 am, 9 May',style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Ubuntu-Light',
                                    color: Colors.white

                                ),),

                              ],
                            ),
                            FlatButton(

                              color: Colors.red,

                              child: Row(

                                children: <Widget>[
                                  Text(
                                    "Tracking",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:8.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.solidCircle,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ), onPressed: () {
                            },
                            )
                          ],

                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:218.0),
                    child: Container(
                      width: 0.8,
                      height: 12,
                      color: stepperline,
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:218.0,top: 12),
                    child: Container(
                      width: 0.8,
                      height: 12,
                      color: stepperline,
                    ),

                  ),    Padding(
                    padding: const EdgeInsets.only(right:218.0),
                    child: Container(
                      width: 0.8,
                      height: 12,
                      color: stepperline,
                    ),

                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:218.0,top: 12),
                    child: Container(
                      width: 0.8,
                      height: 12,
                      color: stepperline,
                    ),

                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:18.0,right: 18,top:22),
                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 12,),
                        Padding(
                          padding: const EdgeInsets.only(left: 22.0),
                          child: ClipOval(
                            child: Material(
                              color: Colors.white, // button color
                              child: InkWell(
                                splashColor:  Colors.white, // inkwell color
                                child: SizedBox(width: 30, height: 30, child: Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.box,
                                    size: 22.0,
                                    color: Colors.red,
                                  ),
                                ),),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 22,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Delivered',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Ubuntu-Medium',
                                color: Colors.white
                            ),),
                            SizedBox(height: 5,),
                            Row(
                              children: <Widget>[
                                FaIcon(
                                  FontAwesomeIcons.clock,
                                  size: 18.0,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 15,),
                                Text('Finish time in 3 min',style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Ubuntu-Light',
                                    color: Colors.white

                                ),),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),


          ],
        )
    );
  }

}

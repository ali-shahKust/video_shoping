import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videoshoping/appcolor/Constant.dart';

import '../../res.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.appColor,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    Res.visa,

                  ),
                ),
              ),   Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    Res.amazon,

                  ),
                ),
              ),   Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    Res.paypal,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Card number'.toUpperCase(),style: TextStyle(color: Colors.red),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white60),
                    decoration: new InputDecoration(
                        border: new UnderlineInputBorder(
                            borderSide: new BorderSide(
                                color: Colors.white60
                            )
                        ),
                        hintText: "123 456 789 123",
                        hintStyle: TextStyle(fontSize: 16.0, color: Colors.white60),
                        labelStyle: new TextStyle(
                            color: Colors.white60
                        )
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:18.0,left: 16),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('Expire Date'.toUpperCase(),style: TextStyle(color: Colors.red),),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              width: 70,
                              child: TextField(
                                style: TextStyle(color: Colors.white60),
                                decoration: new InputDecoration(
                                    border: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.white60
                                        )
                                    ),
                                    hintText: "05/20",
                                    hintStyle: TextStyle(fontSize: 16.0, color: Colors.white60),
                                    labelStyle: new TextStyle(
                                        color: Colors.white60
                                    )
                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 100,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('Cvv'.toUpperCase(),style: TextStyle(color: Colors.red),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              width: 70,
                              child: TextField(
                                style: TextStyle(color: Colors.white60),
                                decoration: new InputDecoration(
                                    border: new UnderlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.white60
                                        )
                                    ),
                                    hintText: "123",
                                    hintStyle: TextStyle(fontSize: 16.0, color: Colors.white60),
                                    labelStyle: new TextStyle(
                                        color: Colors.white60
                                    )
                                ),

                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Text('Cardholder name'.toUpperCase(),style: TextStyle(color: Colors.red),),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white60),
                    decoration: new InputDecoration(
                        border: new UnderlineInputBorder(
                            borderSide: new BorderSide(
                                color: Colors.white60
                            )
                        ),
                        hintText: "John doe",
                        hintStyle: TextStyle(fontSize: 16.0, color: Colors.white60),
                        labelStyle: new TextStyle(
                            color: Colors.white60
                        )
                    ),

                  ),
                ),
                SizedBox(height: 15,),
                Theme(
                  data: ThemeData(unselectedWidgetColor: Colors.red),
                  child: CheckboxListTile(
                    checkColor: Colors.yellowAccent,
                    activeColor: Colors.red,
                    title: Text("Save Card",style: TextStyle(color: Colors.red),),
                    value: false,
                    onChanged: (newValue) {
                      setState(() {
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ButtonTheme(
                    buttonColor: Constant.selectedTab,
                    minWidth:double.infinity,
                    height: 50.0,
                    child: RaisedButton(
                      onPressed: () {
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Pay Now",style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 19
                          ),),
                          SizedBox(width: 15,),
                          FaIcon(FontAwesomeIcons.creditCard,size: 18.0,color: Colors.white,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

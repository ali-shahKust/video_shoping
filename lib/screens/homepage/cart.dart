import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videoshoping/appcolor/Constant.dart';
import 'package:videoshoping/screens/homepage/checkout.dart';

import '../../res.dart';
import 'HomepageMain.dart';

class Cart_page extends StatefulWidget {
  @override
  _Cart_pageState createState() => _Cart_pageState();
}

final appcolor = Constant.appColor;

class _Cart_pageState extends State<Cart_page> {
  num _defaultValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: appcolor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: FaIcon(FontAwesomeIcons.mapMarker,
                        size: 18.0, color: Colors.grey),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      'Linking road , street 9, LA Street 40',
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 12),
            child: Text(
              'Order Summary',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: appcolor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return buildOrderSumList(context, index);
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 190,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: appcolor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:18.0,left: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Subtotal',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            '\$10.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Discount',
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            '-\$10.00',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Delivery Charges',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Text(
                            '\$10.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(height: 5,color: Colors.white60,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Total',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Text(
                            '\$100.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: appcolor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new OutlineButton(
                      borderSide: BorderSide(color: Colors.blue),

                      child: new Text("Add Items",style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                      ),
                      onPressed: null,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
                  ),
                  FlatButton(

                    color: Colors.red,
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ), onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Checkout()));
                  },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildOrderSumList(BuildContext context, int index) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                      radius: 35,
                      backgroundColor: appcolor,
                      backgroundImage: AssetImage(Res.nfcap)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Grey T-Shirt',
                      style: TextStyle(color: Colors.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Quantity',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 75,),
                            Container(
                              width: 20.0,
                              height: 20.0,

                              child: new FloatingActionButton(
                                heroTag: null,
                                onPressed: minus,
                                child: new Icon(
                                    const IconData(0xe15b, fontFamily: 'MaterialIcons'),
                                    color: Colors.black),
                                backgroundColor: Colors.red,),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(left: 5,right: 5),
                              child: new Text('$_n',
                                  style: new TextStyle(fontSize: 12.0,color: Colors.white)),
                            ),
                            Container(
                              width: 20.0,
                              height: 20.0,
                              child: new FloatingActionButton(
                                heroTag: null,
                                onPressed: add,
                                child: new Icon(Icons.add, color: Colors.black,),
                                backgroundColor: Colors.white,),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Item Price',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            width: 92,
                          ),
                          Text(
                            '\$10.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Total',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Text(
                            '\$10.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Container(
                        width: 220,
                        height: 0.5,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
}

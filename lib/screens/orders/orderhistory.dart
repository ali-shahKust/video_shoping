import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videoshoping/appcolor/Constant.dart';
import 'package:videoshoping/screens/homepage/checkout.dart';
import 'package:videoshoping/screens/orders/trackorder.dart';

class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

final appcolor = Constant.appColor;

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor,
      appBar: AppBar(
        title: Center(
          child: Text('Order History'),
        ),
        backgroundColor: appcolor,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
             Container(
                      padding: EdgeInsets.only(top: 100),
                      height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return buildOrderList(context, index);
                          }),
                    )

        ,
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOrderList(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 200,
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
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: FaIcon(
                    FontAwesomeIcons.history,
                    size: 22.0,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Order Id',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(width: 130,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '12345',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(height: 4,color: Colors.white60,),
            ),
            Row(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 2),
                  child: Text(
                    'Ammount',
                    style: TextStyle(fontSize: 16, color: Colors.white60),
                  ),
                ),
                SizedBox(width: 140,),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 2),
                  child: Text(
                    '\$500',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Row(
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(left:18.0,top: 2),
                    child: Text(
                      'Order Status',
                      style: TextStyle(fontSize: 16, color: Colors.white60),
                    ),
                  ),
                  SizedBox(width: 120,),
                  Padding(
                    padding: const EdgeInsets.only(left:18.0,top: 2),
                    child: Text(
                      'Delivered',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Text(
                      '2020-10-12 10:15 am',
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(

                    color: Colors.red,
                    child: Text(
                      "Track",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Track_Order()));
                  },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

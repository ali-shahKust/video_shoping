import 'package:flutter/material.dart';
import 'package:videoshoping/appcolor/Constant.dart';

import '../../res.dart';
class Inbox_Page extends StatefulWidget {
  @override
  _Inbox_PageState createState() => _Inbox_PageState();
}

final appcolor = Constant.appColor;
class _Inbox_PageState extends State<Inbox_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:18.0,top:12),
            child: Text('Today',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 320,
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
                            return buildTodayList(context, index);
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,top:12),
            child: Text('Yesterday',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 320,
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
                            return buildyesterdayList(context, index);
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildTodayList(BuildContext context, int index) {
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
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage(Res.nfcap)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Get 10% off on Nike Cap',style: TextStyle(
                      color: Colors.white
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        child: Text('This offer is valid for next 10 days better hurry up before its end',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                    Text('20 minutes ago',style: TextStyle(
                        color: Colors.white60,
                      fontSize: 12
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,bottom: 8),
                      child: Container(width: 220,height: 0.5,color: Colors.white,),
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
  Widget buildyesterdayList(BuildContext context, int index) {
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
                      backgroundImage: AssetImage(Res.ship)
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Your order got delivered',style: TextStyle(
                        color: Colors.white
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        child: Text('Order Id   56781',style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                    Text('1 day ago',style: TextStyle(
                        color: Colors.white60,
                        fontSize: 12
                    ),),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0,bottom: 8),
                      child: Container(width: 220,height: 0.5,color: Colors.white,),
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
}

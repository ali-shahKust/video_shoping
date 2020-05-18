import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:videoshoping/appcolor/Constant.dart';
import 'package:videoshoping/screens/homepage/inbox.dart';
import 'package:videoshoping/screens/homepage/newsfeed.dart';
import 'package:videoshoping/screens/homepage/profile.dart';
import 'package:videoshoping/screens/homepage/search_page.dart';

class Homepage_Main extends StatefulWidget {
  @override
  _Homepage_MainState createState() => _Homepage_MainState();
}

class _Homepage_MainState extends State<Homepage_Main> {
  List<Object> _tabs;
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  void initState() {
    // TODO: implement initState
    _tabs  = [Feed_page(),Inbox_Page(),Search_Page(),ProfilePage()];

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.appColor,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          height: 55,
          backgroundColor: Colors.transparent,
          color: Color(0xff262626),
          buttonBackgroundColor: Constant.btnColor,
          items: <Widget>[

            Icon(Icons.home, size: 25,color: Colors.white,),
            Icon(Icons.help, size: 25,color: Colors.white),
            Icon(Icons.search,size: 25,color: Colors.white),
            Icon(Icons.bookmark, size: 25,color: Colors.white),
            Icon(Icons.settings, size: 25,color: Colors.white),
            Icon(Icons.share, size: 25,color: Colors.white),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: _tabs[_page]
    );
  }
}

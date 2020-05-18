import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videoshoping/appcolor/Constant.dart';
import 'package:videoshoping/res.dart';
import 'package:videoshoping/screens/homepage/Product_details.dart';

class Feed_page extends StatefulWidget {
  @override
  _Feed_pageState createState() => _Feed_pageState();
}

class _Feed_pageState extends State<Feed_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.appColor,
        appBar: AppBar(
          backgroundColor:Constant.appColor,
          title: Center(child: Text('Feed')),
          elevation: 0,
        ),
        body: Stack(
          children: <Widget>[

            CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: <Widget>[

                SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.0,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 10.0
                      ),
                      delegate: SliverChildBuilderDelegate(
                        _buildCategoryItem,
                        childCount: 10,

                      )

                  ),
                ),
              ],
            ),
          ],
        )
    );
  }

  Widget _buildCategoryItem(BuildContext context, int index) {

    return MaterialButton(
      elevation: 1.0,
      highlightElevation: 1.0,
        onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Product_details()));
        },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      textColor: Colors.black87,
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                FaIcon(FontAwesomeIcons.heart,size: 18.0,),
                Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: Text('1234',style: TextStyle(fontSize: 11),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.only(left:25.0),
                  child: FaIcon(FontAwesomeIcons.eye,size: 18.0,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text('1234',style: TextStyle(fontSize: 11),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    Res.nfcap,
                    height: 90.0,
                    width: 150.0,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      Res.profilepic,
                    width: 30,
                      height: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:2.0,top: 12),
                  child: Text('NF Real Music',style: TextStyle(fontSize: 11),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:5.0,top: 10),
                  child: FaIcon(FontAwesomeIcons.shoppingCart,size: 16.0,),
                ),
              ],
            )
          ],
        ),
      )
    );
  }

}

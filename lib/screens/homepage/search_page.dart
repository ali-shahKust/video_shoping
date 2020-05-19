import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videoshoping/appcolor/Constant.dart';
import 'package:videoshoping/res.dart';

import 'Product_details.dart';

class Search_Page extends StatefulWidget {
  @override
  _Search_PageState createState() => _Search_PageState();
}

class _Search_PageState extends State<Search_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.appColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              elevation: 5.0,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: TextField(
                onChanged: (val) {},
                // controller: TextEditingController(text: locations[0]),
                cursorColor: Theme.of(context).primaryColor,
                decoration: InputDecoration(
                    hintText: "Search Product...",
                    hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: FaIcon(
                        FontAwesomeIcons.search,
                        size: 16.0,
                      ),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:18.0),
            child: Container(
              height: 80,
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

                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return buildHorizontal(context, index);
                        }),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      Res.sale,
                      height: 150.0,
                      width: 150.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      Res.sale,
                      height: 150.0,
                      width: 150.0,
                    ),
                  ),
                ),
              )

            ],
          ),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child:   FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Constant.appColor)),
                    color: Colors.grey,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {},
                    child: Text(
                      "Live Today",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child:   FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Constant.appColor)),
                    color: Colors.grey,
                    textColor: Colors.white60,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {},
                    child: Text(
                      "Replay Past",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child:   FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Constant.appColor)),
                    color: Colors.grey,
                    textColor: Colors.white60,
                    padding: EdgeInsets.all(8.0),
                    onPressed: () {},
                    child: Text(
                      "Upcoming Live",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(bottom:18.0),
            child: Container(
              height: 250,
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
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return liveHorizontal(context, index);
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,top:12),
            child: Text('Popular Products',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
          ),
          SizedBox(height: 25,),
          Container(
            height: 350,
            width: 250,
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: <Widget>[

                SliverPadding(
                  padding: const EdgeInsets.all(8.0),
                  sliver: SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.81,
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
          ),
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
            child:   FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Constant.appColor)),
              color: Colors.grey,
              textColor: Colors.white,
              padding: EdgeInsets.all(8.0),
              onPressed: () {},
              child: Text(
                "Fashion",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
  Widget liveHorizontal(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Image.asset(
            Res.nfcap,
            height: 250.0,
            width: 250.0,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[

                Column(
                  children: <Widget>[
                    CircleAvatar(
                        radius: 15,
                        //  backgroundColor: Colors.white,
                        backgroundImage: AssetImage(Res.profilepic)
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('Nf Real Music',style: TextStyle(color: Colors.white),),
                          SizedBox(width: 50,),
                          Text('335,21 views',style: TextStyle(fontSize: 8,color: Colors.white),),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                              radius: 5,
                              //  backgroundColor: Colors.white,
                              backgroundImage: AssetImage(Res.livelogo)
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Text('Live',style: TextStyle(color: Colors.white),),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:125.0,left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Beer Honey Shirt',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                Container(
                    height: 50,
                    width: 200,
                    child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.white60),)),
              ],
            ),
          )
        ],
      ),
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
        color: Constant.appColor,
        textColor: Colors.black87,
        child: Container(
          color: Constant.appColor,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  FaIcon(FontAwesomeIcons.heart,size: 18.0,color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('1234',style: TextStyle(fontSize: 11,color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:25.0),
                    child: FaIcon(FontAwesomeIcons.eye,size: 18.0,color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Text('1234',style: TextStyle(fontSize: 11,color: Colors.white),
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
                      height: 130.0,
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
                      radius: 15,
                      //  backgroundColor: Colors.white,
                      backgroundImage: AssetImage(Res.profilepic)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:2.0,top: 12),
                    child: Text('NF Real Music',style: TextStyle(fontSize: 11,color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:5.0,top: 10),
                    child: FaIcon(FontAwesomeIcons.shoppingCart,size: 16.0,color: Colors.white),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}

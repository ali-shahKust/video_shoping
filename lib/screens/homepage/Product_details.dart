import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:videoshoping/appcolor/Constant.dart';
import 'package:videoshoping/res.dart';

class Product_details extends StatefulWidget {
  @override
  _Product_detailsState createState() => _Product_detailsState();
}
final appclr = Constant.appColor;
class _Product_detailsState extends State<Product_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appColor,
        title: Center(child: Text('Product Detail'),),
      ),
      backgroundColor: Constant.appColor,

      body: ListView(
        children: <Widget>[
          SizedBox(height: 50,),
          Center(child: Text('Beer Honey Shirt',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32,color: Colors.white),)),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left:60.0,right: 60),
            child: Center(child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s. ',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12,color: Colors.white60),)),
          ),
          SizedBox(height: 30,),
          Center(child: Text('Color:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Material(
                  color: Colors.white, // button color
                  child: InkWell(
                    splashColor: Colors.white, // inkwell color
                    child: SizedBox(width: 25, height: 25,),
                    onTap: () {},
                  ),
                ),
              ),
            ),   Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Material(
                  color: Colors.blue, // button color
                  child: InkWell(
                    splashColor: Colors.blue, // inkwell color
                    child: SizedBox(width: 25, height: 25,),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Material(
                  color: Colors.red, // button color
                  child: InkWell(
                    splashColor: Colors.red, // inkwell color
                    child: SizedBox(width: 25, height: 25,),
                    onTap: () {},
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Material(
                  color: Colors.black, // button color
                  child: InkWell(
                    splashColor: Colors.black, // inkwell color
                    child: SizedBox(width: 25, height: 25,),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
          SizedBox(height: 25,),
          Center(child: Text('Size:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),)),
          SizedBox(height: 5,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('XXS',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
              ),              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('XS',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
              ),              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('S',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('M',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
              ),              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('L',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
              ),              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('XL',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
              ),              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('XXL',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ],
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
                    Text("Add To Cart",style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19
                    ),),
                    SizedBox(width: 15,),
                    FaIcon(FontAwesomeIcons.shoppingCart,size: 18.0,color: Colors.white,),
                  ],
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              Res.nfcap,
              height: 200.0,
              width: 150.0,
            ),
          ),
          SizedBox(height: 25,),
        ],
      ),
    );
  }
}

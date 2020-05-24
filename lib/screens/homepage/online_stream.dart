import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';
import 'package:videoshoping/appcolor/Constant.dart';
import 'package:videoshoping/res.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Online_Stream extends StatefulWidget {
  @override
  _Online_StreamState createState() => _Online_StreamState();
}

class _Online_StreamState extends State<Online_Stream> {
  String videoURL = "https://www.youtube.com/watch?v=n8X9_MgEdCg";
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'iLnmTe5Q2Qw',
    flags: YoutubePlayerFlags(
      isLive: true,
      autoPlay: true,
      mute: true,
    ),
  );
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: YoutubePlayer(
              controller: _controller,
              liveUIColor: Colors.amber,
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
              color: Color.fromRGBO(23, 22, 22, 0.5),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: CircleAvatar(
                    radius: 31,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(Res.profilepic),
                      radius: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                    Text('NF Real Music', style: TextStyle(
                      color: Colors.white
                    ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                      FlatButton(

                        color: Colors.red,

                        child: Row(

                          children: <Widget>[
                            Text(
                              "Follow",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ],
                        ), onPressed: () {
                      },
                      )
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:125.0),
                  child: ClipOval(
                    child: Material(
                      color: Colors.white, // button color
                      child: InkWell(
                        splashColor:  Colors.white, // inkwell color
                        child: SizedBox(width: 30, height: 30, child: Center(
                          child: Icon(
                            Icons.close,
                            size: 22.0,
                            color: Color.fromRGBO(23, 22, 22, 0.5),
                          ),
                        ),),
                        onTap: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:50.0,top:350),
            child: Container(
              width: 300,
              height: 40,
              color: Color.fromRGBO(23, 22, 22, 0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:5.0),
                    child: Text('NF:', style: TextStyle(
                        color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Text('This is some dummy Text', style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 14
                    ),),
                  ),
                ],
              ) ,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:50.0,top:400),
            child: GestureDetector(
              onTap: (){
                scaffoldKey.currentState
                    .showBottomSheet((context) => Container(
                  width: double.infinity,
                  height: 350,
                  color: Colors.white,
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
                ));
              },
              child: Container(
                width: 300,
                height: 100,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child:Image.asset(
                        Res.nfcap,
                        height: 100.0,
                        width: 100.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:18.0,top: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Text('NF Real Music Cap', style: TextStyle(
                              color: Colors.black87
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left:5.0),
                                child: Text('\$15',style: TextStyle(color: Colors.red),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:5.0),
                                child:Text('\$28.99', style: TextStyle(decoration: TextDecoration.lineThrough))
                              ),

                            ],
                          ),

                        ],),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:570),
            child: Container(
              width: double.infinity,
              height: 70,
              color: Color.fromRGBO(194, 188, 188, 0.5),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child:Image.asset(
                      Res.shopbag,
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:3.0,top: 5),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Container(
                        width: 180,
                        child: TextField(
                          onChanged: (val) {},
                          // controller: TextEditingController(text: locations[0]),
                          cursorColor: Theme.of(context).primaryColor,
                          decoration: InputDecoration(
                              hintText: "Say Something...",
                              hintStyle: TextStyle(color: Colors.black38, fontSize: 16),
                              border: InputBorder.none,
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                        ),
                      ),
                    ),
                  ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: ClipOval(
                child: Material(
                  color: Colors.red, // button color
                  child: InkWell(
                    splashColor:  Colors.red, // inkwell color
                    child: SizedBox(width: 40, height: 40, child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.share,
                        size: 22.0,
                        color: Colors.white,
                      ),
                    ),),
                    onTap: () {},
                  ),
    )
              ),
            ),
                  Padding(
                    padding: const EdgeInsets.only(left:12.0,),
                    child: ClipOval(
                        child: Material(
                          color: Colors.red, // button color
                          child: InkWell(
                            splashColor:  Colors.red, // inkwell color
                            child: SizedBox(width: 40, height: 40, child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.solidHeart,
                                size: 22.0,
                                color: Colors.white,
                              ),
                            ),),
                            onTap: () {},
                          ),
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  Widget buildTodayList(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: myBoxDecoration(),
        width: 300,
        height: 100,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:12.0),
              child:Image.asset(
                Res.nfcap,
                height: 100.0,
                width: 100.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:18.0,top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text('NF Real Music Cap', style: TextStyle(
                      color: Colors.black87
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text('\$15',style: TextStyle(color: Colors.red),),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child:Text('\$28.99', style: TextStyle(decoration: TextDecoration.lineThrough))
                      ),

                    ],
                  ),

                ],),
            ),
            SizedBox(width: 50,),
            Icon(
              Icons.arrow_forward_ios,
              size: 18.0,
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(),
      color: Colors.white,

    );
  }
}



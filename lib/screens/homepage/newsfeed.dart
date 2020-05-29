import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_player/video_player.dart';
import 'package:videoshoping/appcolor/Constant.dart';
import 'package:videoshoping/res.dart';
import 'package:videoshoping/screens/homepage/Product_details.dart';

class Feed_page extends StatefulWidget {
  @override
  _Feed_pageState createState() => _Feed_pageState();
}

class _Feed_pageState extends State<Feed_page> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  final List<String> vids= [
    'assets/videos/vid1.mp4',
        'assets/videos/vid2.mp4',
    'assets/videos/vid3.mp4',
        'assets/videos/vid4.mp4'
  ];
  @override
  void initState() {
//    _controller = VideoPlayerController.network(
//        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    _controller = VideoPlayerController.asset(vids[1],);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
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
                          childAspectRatio: 0.81,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 10.0
                      ),
                      delegate: SliverChildBuilderDelegate(
                        _buildCategoryItem,
                        childCount: vids.length,

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
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 130,
                  height: 150,
                  child: FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Center(
                          child: AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          ),
                        );
                      } else {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                ),
                CircleAvatar(
                    radius: 25,
                     backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(Res.playicon)
                ),

              ],

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

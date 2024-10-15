import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/model/Method.dart';
import 'package:portfolio/widget/AboutPage.dart';
import 'package:portfolio/widget/AppBarTitle.dart';
import 'package:portfolio/widget/FooterPage.dart';
import 'package:portfolio/widget/IntroPage.dart';
import 'package:portfolio/widget/ProjectPage.dart';
import 'package:portfolio/widget/ProjectWidget.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method=new Method();

  late final VideoPlayerController videoController;
  @override
  void initState() {
    videoController = VideoPlayerController.asset('assests/videos/video.mp4')
      ..initialize().then((_) {
        videoController.play();
        videoController.setLooping(true);
      });
    super.initState();
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                repeat: ImageRepeat.repeat,
                // fit: BoxFit.cover,
                image:  NetworkImage('https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExZXRqNjZ5djJlcWM2eW80eTNncnB0MHB4MDIzMHlyOWNwd2I2YmJsYSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xT9IgN8YKRhByRBzMI/giphy.gif'),
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.1), // Adjust opacity to blend the image edges subtly
            ),
          ),
          SingleChildScrollView(
            child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  IntroPage(),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white.withOpacity(0.05),
                        ),
                        child: Column(
                          children: [
                            AboutPage(),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(50.0, 100.0, 60.0,0.0),
                              child: Text('My Projects',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 45.0),),
                            ),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                              child:  ProjectWidget("Movie Streaming Application Build With Flutter And Firebase (Netflix Clone)","project.png","Flutter Dart Firebase","ScreenTime"),
                            ),

                            Padding(
                              padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                              child:  ProjectWidget2("Social Media Application Builded With Android Studio And Firebase(Backend)","project2.png","Android Studio Java Firebase","PinGo"),
                            ),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                              child:  ProjectWidget("NetFlix Mobile And Web Ui Clone Builded With Flutter","project3.png","Flutter Dart ","NetFlix UI"),
                            ),
                            FooterPage(),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
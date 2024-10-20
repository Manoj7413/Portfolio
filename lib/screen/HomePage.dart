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
import '../widget/Carosel_Slider.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Method method=new Method();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                // repeat: ImageRepeat.repeat,
                scale: 2,
                alignment: Alignment.center,
                image:  NetworkImage('https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMWUxNmt4Z2NuN29mdmd6ejFobTl5cDNyazQxcDl3emR1b255Nmp4ZiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/3o7WIB00yXujVt4WEo/giphy-downsized-large.gif'),
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          SingleChildScrollView(
            child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  IntroPage(),
                  ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white.withOpacity(0.08),
                        ),
                        child: Column(
                          children: [
                            AboutPage(),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(50.0, 100.0, 60.0,0.0),
                              child: Text('My Projects',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 45.0),),
                            ),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(0.0, 100.0, 50.0,0.0),
                              child:  ProjectWidget("Movie Streaming Application Build With Flutter And Firebase (Looking Like Netflix)","project.png","Flutter Dart Firebase","ScreenTime","https://github.com/Manoj7413/Movie_App"),
                            ),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                              child:  ProjectWidget2("Successfully Builded A Food Recipe App with Dart flutter In Android Studio And Firebase","recipe1.png","Android Studio Dart Firebase","MealMania","https://github.com/Manoj7413/Portfolio"),
                            ),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(0.0, 100.0, 50.0,0.0),
                              child:  ProjectWidget("Portfolio Website Builded With Android Studio And Firebase","project13.jpg","Android Studio Dart Firebase","Portfolio","https://github.com/Manoj7413/Portfolio"),
                            ),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(50.0, 100.0, 0.0,0.0),
                              child:  ProjectWidget2("Build A Breakfast App With Flutter","project14.jpg","Flutter Dart","Fork And Spoon","https://github.com/Manoj7413/Breakfast_app"),
                            ),
                            Padding(
                              padding:  EdgeInsets.fromLTRB(50.0, 25.0, 50.0,20.0),
                              child: Text('Certificates',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 45.0),),
                            ),
                            MySlider(),
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
import 'dart:math';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    double scwidth = max(MediaQuery.of(context).size.width*0.08,70);
    String str="I Am Manoj Kumhar, Student Developer";
    String str2="With a passion for crafting engaging digital experiences, I intermediate in Flutter and Dart app development, having built dynamic projects like a movie app and a recipe app that bring entertainment and utility to users. Beyond mobile applications, I’ve ventured into web and game development, creating a music website and interactive games like 'Snake Master' using HTML, CSS, and JavaScript, and a Ping Pong game in Python. Each project is an expression of my dedication to functionality, creativity, and user experience, making complex solutions feel intuitive and accessible.";
    return Container(
      // color: Colors.white,
      // height:MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 50,vertical: 0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           SizedBox(height: 20.0,),
           Text('About Me',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: scwidth/3),),
            SizedBox(height: 20.0,),
            Text(str,style: TextStyle(fontSize: scwidth/3,color:Colors.white70),),
            SizedBox(height: 20.0,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               SizedBox(
                 width: MediaQuery.of(context).size.width*0.48,
                 child: Text(str2, style: TextStyle(fontSize: scwidth/4, color: Colors.white70,),
                 ),
               ),
               Image(
                 width:MediaQuery.of(context).size.width*0.32,
                 image: AssetImage("assets/me.png"),
                 fit: BoxFit.cover,
               ),
             ],
           ),
           SizedBox(height: 100.0,),
           Text('Skills',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: scwidth/3),),
            SizedBox(height: 20.0,),
            Image(
              height: scwidth/1.5,
              image: AssetImage("assets/skills.png"),
              fit: BoxFit.cover,
            ),
         ],
       ),
    );
  }
}


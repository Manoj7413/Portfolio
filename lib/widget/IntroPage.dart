import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/model/Method.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    double scwidth = max(MediaQuery.of(context).size.width*0.08,50);
    Method method=new Method();
    String str="Student Developer Who Exploring New Things In Dev Part Of IT World";
    bool isHovered = false;
    return Container(
      height:MediaQuery.of(context).size.height,
      padding: EdgeInsets.fromLTRB(50.0, 100.0, 60.0,0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text('Hi ! I am ,',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: scwidth/3),),
              SizedBox(height: 5.0,),
              Text('Manoj Kumhar',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: scwidth),),
              SizedBox(height: 5.0,),
              Text('I Build Android Application',style: TextStyle(color: Colors.white54,fontWeight: FontWeight.bold,fontSize:  scwidth*0.5),),
              // SizedBox(height: 40.0,),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  onEnter: (_) => setState(() => isHovered = true),
                  onExit: (_) => setState(() => isHovered = false),
                  child: GestureDetector(
                    onTap: (){
                      method.launchURL(
                          "https://www.facebook.com/profile.php?id=100013215377464");
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white30),
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [BoxShadow(color:  Colors.blueGrey.shade100,offset: Offset(0.5,0.5),blurRadius: 10,spreadRadius: 3)]
                      ),
                      child: Image.asset(
                        "assests/facebook.png",
                        width: max(MediaQuery.of(context).size.width*0.03,40),
                        height: max(MediaQuery.of(context).size.width*0.03,40),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(height:20.0),
                GestureDetector(
                  onTap: (){
                    method.launchURL(
                        "https://github.com/Akshay0701");
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                        boxShadow: [BoxShadow(color: Colors.black,offset: Offset(0.5,0.5),blurRadius: 10,spreadRadius: 5)]
                    ),
                  child: Image(
                    width: max(MediaQuery.of(context).size.width*0.03,40),
                    height: max(MediaQuery.of(context).size.width*0.03,40),
                    image: AssetImage("assests/github.png"),
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
                SizedBox(height:20.0),
                GestureDetector(
                  onTap: (){
                    method.launchURL(
                        "https://www.hackerrank.com/jadhavakshay0701");
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [BoxShadow(color: Colors.lightGreenAccent,offset: Offset(0.5,0.5),blurRadius: 10,spreadRadius: 3)]
                    ),
                  child: Image(
                    width: max(MediaQuery.of(context).size.width*0.03,40),
                    height: max(MediaQuery.of(context).size.width*0.03,40),
                    image: AssetImage("assests/hackerrank.png"),
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
                SizedBox(height:20.0),
                GestureDetector(
                  onTap: (){
                    method.launchURL(
                        "https://www.linkedin.com/in/akshay-jadhav-90ba81134/");
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                        boxShadow: [BoxShadow(color: Colors.blueGrey.shade200,offset: Offset(0.5,0.5),blurRadius: 10,spreadRadius: 3)]
                    ),
                  child: Image(
                    width: max(MediaQuery.of(context).size.width*0.03,40),
                    height: max(MediaQuery.of(context).size.width*0.03,40),
                    image: AssetImage("assests/linkedin.png"),
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
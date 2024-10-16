import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/model/Method.dart';
class FooterPage extends StatefulWidget {
  @override
  _FooterPageState createState() => _FooterPageState();
}

class _FooterPageState extends State<FooterPage> {
  @override
  Widget build(BuildContext context) {
    double scwidth = max(MediaQuery.of(context).size.width*0.01,5);
    Method method=new Method();
    String str="With a focus on creating seamless and high-performance applications, I bring ideas to life through intuitive design and advanced functionality. From initial concept to launch, I’m dedicated to building user-centered mobile experiences that are both visually compelling and technically robust. Using Android Studio, Flutter, and Dart, I craft apps that integrate innovation with practicality, ensuring scalability, responsiveness, and an experience that puts users first. Each project is an opportunity to transform ideas into interactive, efficient solutions that make a difference in the digital landscape";
    return Container(
      alignment: Alignment.center,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children:[
         SizedBox(height: 30.0,),
         Text('Whats Next ?',style: TextStyle(color: Color(0xff48E1EC),fontSize: 35.0),),
         SizedBox(height: 30.0,),
         Text('Get In Touch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 85.0),),
         SizedBox(height: 30.0,),
         SizedBox(
           width: 700,
           child: Text(str,style: TextStyle(color: Colors.white,fontSize: 20.0),textAlign: TextAlign.center,)),
          SizedBox(height: 70.0,),
        SizedBox(
          height: 65,
          width: 200,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white10),
            ),
            onPressed: () {method.launchURL("https://www.linkedin.com/in/manoj-kumhar-472321261/");},
            child:Text("Get In Touch",style:TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 25.0),),
          ),
        ),
          SizedBox(height: 100.0,),
        ],
      ),
    );
  }
}
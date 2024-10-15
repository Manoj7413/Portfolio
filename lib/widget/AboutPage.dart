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
    String str2="Experienced Android Developer with a demonstrated history of working in the computer software industry. Skilled in Loyalty Programs, Mobile Applications, Java, and last my most favourite flutter framework (builded over more then 15 project on it). Strong engineering professional with a High School Diploma focused in Information Technology from Vidyalankar Group of Educational Institutes. ";
    return Container(
      // color: Colors.white,
      // height:MediaQuery.of(context).size.height,
      padding: EdgeInsets.symmetric(horizontal: 50,vertical: 0),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('About Me',style: TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: scwidth/3),),
            SizedBox(height: 10.0,),
            Text(str,style: TextStyle(fontSize: scwidth/3.5,color:Colors.white70),),
            SizedBox(height: 10.0,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               SizedBox(
                 width: MediaQuery.of(context).size.width*0.48,
                 child: Text(str2, style: TextStyle(fontSize: scwidth/4, color: Colors.white70,),
                 ),
               ),
               Image(
                 width:MediaQuery.of(context).size.width*0.30,
                 image: AssetImage("assets/mypic.png"),
                 fit: BoxFit.cover,
               )
             ],
           ),
           SizedBox(height: 20.0,),
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
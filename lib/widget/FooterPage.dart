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
    String str="Lorem Ipsum is simply dummy text of the printing and typesettingindustry. Lorem Ipsum has been.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum";
    return Container(
      alignment: Alignment.center,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children:[
         SizedBox(height: 50.0,),
         Text('Whats Next ?',style: TextStyle(color: Color(0xff48E1EC),fontSize: 35.0),),
         SizedBox(height: 30.0,),
         Text('Get In Touch',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 85.0),),
         SizedBox(height: 30.0,),
         SizedBox(
           width: 600,
           child: Text(str,style: TextStyle(color: Colors.white54,fontSize: 20.0),textAlign: TextAlign.center,)),
          SizedBox(height: 40.0,),
        SizedBox(
          height: 65,
          width: 200,
          child: TextButton(
            onPressed: () {method.launchURL("https://www.linkedin.com/in/akshay-jadhav-90ba81134/");},
            child:Text("Get In Touch",style:TextStyle(color: Color(0xff48E1EC),fontWeight: FontWeight.bold,fontSize: 20.0),),
          ),
          ),
        ],
      ),
    );
  }
}
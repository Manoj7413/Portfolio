import 'package:flutter/material.dart';

import '../model/Method.dart';


class ProjectWidget extends StatefulWidget {
  final String imageurl,tech,desc,title,link;
  ProjectWidget(this.desc,this.imageurl,this.tech,this.title,this.link);
  @override
  _ProjectWidgetState createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  @override
  Widget build(BuildContext context) {
    Method method=new Method();
    return Container(
      height:MediaQuery.of(context).size.height*0.8,
      child: Stack(
        children: [
           Positioned(
            right: 40.0,
            child: Image(
              height: 500,
            image: AssetImage("assets/${widget.imageurl}"),
            fit: BoxFit.cover,
          ),
        ),
          Positioned(
            left: 40.0,
            top: 40.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [ Colors.transparent,Color(0xff1e1f22)], // Replace with your colors
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45.0),),
                  SizedBox(height:50),
                  Container(
                    width: MediaQuery.of(context).size.width*0.33,
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(widget.desc,style:TextStyle(color: Colors.white,fontSize:20.0,),),
                  )),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5.0,
                    ),],
                  color: Color(0xff172943),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                                      ),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(widget.tech,style:TextStyle(color: Colors.white,fontSize:20.0,),),
                  ),
                  SizedBox(height: 20.0,),
                  InkWell(
                    onTap: (){
                      method.launchURL(widget.link);
                    },
                    child: Image(
                    height: 60,
                    image: AssetImage("assets/github.png"),
                    fit: BoxFit.cover,
                                    ),
                  ),
                ],
              ),
            ),
            ),
         
        ],
        ),
    );
  }
}

class ProjectWidget2 extends StatefulWidget {
  final String imageurl,tech,desc,title,link;
  ProjectWidget2(this.desc,this.imageurl,this.tech,this.title,this.link);
  @override
  _ProjectWidget2State createState() => _ProjectWidget2State();
}

class _ProjectWidget2State extends State<ProjectWidget2> {
  @override
  Widget build(BuildContext context) {
    Method method=new Method();
   return Container(
      height:MediaQuery.of(context).size.height*0.8,
      child: Stack(
        children: [
           Positioned(
            left: 40.0,
            child: Image(
              height: 500,
            image: AssetImage("assets/${widget.imageurl}"),
            fit: BoxFit.cover,
          ),
        ),
          Positioned(
            right: 40.0,
            top: 40.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff1e1f22),Colors.transparent], // Replace with your colors
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:[
                  Text(widget.title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 45.0),),
                  SizedBox(height:50),
                  Container(
                    width: MediaQuery.of(context).size.width*0.33,
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(widget.desc,style:TextStyle(color: Colors.white,fontSize:20.0,),),
                  )),
                  decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5.0,
                    ),],
                  color: Color(0xff172943),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                                      ),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(widget.tech,style:TextStyle(color: Colors.white,fontSize:20.0,),),
                  ),
                  SizedBox(height: 20.0,),
                  InkWell(
                    onTap: (){
                      method.launchURL(widget.link);
                    },
                    child: Image(
                    height: 60,
                    image: AssetImage("assets/github.png"),
                    fit: BoxFit.cover,
                                    ),
                  ),
                ],
              ),
            ),
            ),
         
        ],
        ),
    );
  }
}
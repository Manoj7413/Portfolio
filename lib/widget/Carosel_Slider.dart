// import 'package:flutter/cupertino.dart';
//
// class My_Slider extends StatefulWidget {
//   const My_Slider({super.key});
//
//   @override
//   State<My_Slider> createState() => _My_SliderState();
// }
//
// class _My_SliderState extends State<My_Slider> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }


import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:async'; // For auto-slide timer

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  final PageController _pageController = PageController(viewportFraction: 0.5);
  double currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!;
      });
    });
    _startAutoSlide();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer?.cancel(); // Cancel the auto-slide timer
    super.dispose();
  }

  // Function to start auto-sliding with a timer
  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      int nextPage = (_pageController.page!.toInt() + 1) % 2; // Calculate next page
      _pageController.animateToPage(
        nextPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: max(250,MediaQuery.of(context).size.width*0.45),
      child: PageView.builder(
        controller: _pageController,
        itemCount: 2,
        itemBuilder: (context, indx) {
          // Calculate smooth scaling based on page distance
          double difference = (currentPage - indx).abs();
          double scale = (1 - (difference * 0.3)).clamp(0.5, 1.0);

          return Transform.scale(
            scale: scale,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Image(image: AssetImage("assets/${indx+1}.png")),
                  SizedBox(height: 15,),
                  Center(child: Text(indx==1?"RBI Quiz":"Flutter Beginner" ,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

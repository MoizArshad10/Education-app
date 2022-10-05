import 'package:app/screens/detail_page.dart';
import 'package:app/widgets/container_widget.dart';
import 'package:app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent, leading: Stack(children: [
          Image.asset("assets/images/login.png"),
          Positioned(
            top: 10,
            left: 15,
            child: Icon(Icons.arrow_back_ios_sharp,color: MainColor,))
        ]),title: textWidget("Continue Your Lessons ", Colors.white, 16.0, FontWeight.bold),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(padding:EdgeInsets.symmetric(vertical:8.0,horizontal: 30.0),child: 
            containerWidget((){Get.to(DetailPage());})),
            Padding(padding:EdgeInsets.symmetric(vertical:8.0,horizontal: 30.0),child: 
            containerWidget((){})),
            Padding(padding:EdgeInsets.symmetric(vertical:8.0,horizontal: 30.0),child: 
            containerWidget((){})),
            Padding(padding:EdgeInsets.symmetric(vertical:8.0,horizontal: 30.0),child: 
            containerWidget((){})),
            
          ],
        ),
      ),
    );
  }
}
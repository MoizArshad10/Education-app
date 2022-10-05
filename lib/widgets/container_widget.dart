import 'package:app/screens/about_page.dart';
import 'package:app/utils/colors.dart';
import 'package:app/widgets/button_widget.dart';
import 'package:app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

containerWidget(func){
  return Container(
    height: 150,
    width: 350,
    decoration: BoxDecoration(
    color: Color.fromARGB(255, 29, 118, 32),
    borderRadius: BorderRadius.circular(18.0)
    ),
    child: Stack(
      children: [
        Positioned(
          top: 20,
          left: 40,
          child: textWidget('''Ongoing . 22/23''', Colors.white, 14.0, FontWeight.normal)),
          Positioned(
            top: 40,
            left: 40,
            child: textWidget("Basic UI/UX Designer", Colors.white, 18.0, FontWeight.normal)),
            Positioned(
              top: 60,
              left: 40,
              child: textWidget("by Azamat baimatov", Colors.white, 16.0, FontWeight.normal)),
              Positioned(
                top: 90,
                left: 40,
                child: buttonWidget(func, "Continue", subSecColor, 40.0, 60.0, 14.0)),
                Positioned(
                  left: 220,
                  top: 20,
                  child: CircularPercentIndicator(
              radius: 50.0,
              lineWidth: 15.0,
              percent: 0.7,
              center: new Text("75%",style: TextStyle(color: Colors.white),),
              progressColor: Colors.white,
            ))
      ],
    ),
  );
}
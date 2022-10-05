

import 'package:flutter/material.dart';

import '../utils/colors.dart';

gridWidget(img,text){
  return GridView.builder(
    itemCount: 8,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder:(context,index){
    return Column(
      children: [
        Container(color: MainColor,height: 50,width: 50,child: Center(child: Image.asset(img)),),
        Text(text,style: TextStyle(color: Colors.white),)
       
        
      ],
    ); 
  });
}




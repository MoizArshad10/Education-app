import 'package:flutter/material.dart';

buttonWidget(func,text,color,height,width,fsize){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      minimumSize: Size(width, height)
    ),
    onPressed: func, child: Text(text,style: TextStyle(fontSize: fsize),));
}
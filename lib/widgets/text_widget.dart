import 'package:flutter/material.dart';

textWidget(text,color,fsize,fweight){
  return Text(text,style: TextStyle(
    color: color,
    fontSize: fsize,
    fontWeight: fweight
  ),);
}
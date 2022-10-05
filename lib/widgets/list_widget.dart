import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

listWidget(oneicon,text,icon){
  return ListTile(
    leading: Container(
      height: 40,
      width: 40, 
    decoration: BoxDecoration( color: MainColor,borderRadius: BorderRadius.circular(16.0)), child: oneicon,),
    title: text,
    trailing: icon,
  );
}
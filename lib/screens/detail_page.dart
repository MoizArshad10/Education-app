import 'package:app/screens/profile_mentor.dart';
import 'package:app/widgets/button_widget.dart';
import 'package:app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class DetailPage extends StatelessWidget {
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
        ]),actions: [Image.asset("assets/images/cart 2.png"),Image.asset("assets/images/share.png")],),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
              child:  ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network("https://images.pexels.com/photos/4778611/pexels-photo-4778611.jpeg?auto=compress&cs=tinysrgb&w=600",
                fit: BoxFit.cover,
                
                height: 200,
                width: 400,
                ),
              ),
            ),
            Row(children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 24.0),child: 
            textWidget("Basic UI/UX Designer", Colors.white, 22.0, FontWeight.normal)),],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [textWidget("4.8", Colors.white, 14.0, FontWeight.normal),textWidget('''******''', Colors.yellow, 18.0, FontWeight.normal),
              textWidget("(534)", Colors.grey, 12.0, FontWeight.normal),buttonWidget((){}, "UI/UX", MainColor, 20.0, 40.0, 12.0)],),
              Padding(
                padding: const EdgeInsets.only(left:24.0,top: 8.0),
                child: Row(children: [textWidget("\$ 145", subSecColor, 18.0, FontWeight.bold),SizedBox(width: 260.0,), CircleAvatar(backgroundColor: subSecColor,child: Icon(Icons.favorite,color: Colors.white,),)]),
              ),SizedBox(height: 10.0,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [Icon(Icons.group,color: Colors.grey,), textWidget("1203 Members", Colors.grey, 14.0, FontWeight.normal),
              Icon(Icons.play_circle,color: Colors.grey,),textWidget("42 Lessons", Colors.grey, 14.0, FontWeight.normal),
              Icon(Icons.document_scanner,color: Colors.grey,), textWidget("Certificate", Colors.grey, 14.0, FontWeight.normal)],),
              SizedBox(height: 10.0,),
              TabBar(unselectedLabelColor: Colors.white ,indicatorColor: subSecColor,labelColor: subSecColor,
                tabs: [Text("Details"),Text("Lessons"),Text("Reviews")]),
                Padding(
                  padding: const EdgeInsets.only(left:18.0,top: 14.0),
                  child: Row(children: [textWidget("About Course", Colors.white, 20.0, FontWeight.bold)],),),
                  Padding(padding: EdgeInsets.only(left: 20.0,top: 10.0),child: Row(children: [textWidget('''This course is aimed at people new to design, 
new to User Experience design. Even if you’re not 
totally sure what UX really means, don’t worry. We’ll 
start right at the beginning and work our way through 
step by step.''', Colors.grey, 14.0, FontWeight.normal)],),),SizedBox(height: 20.0,),
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [buttonWidget((){}, "Add to cart", buttonColor, 50.0, 50.0, 14.0), buttonWidget((){Get.to(ProfileMentor());}, "Buy Now \$145", MainColor, 50.0, 50.0, 14.0)],)
        ]),
      ),
    );
  }
}
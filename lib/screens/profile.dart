import 'package:app/screens/login_page.dart';
import 'package:app/utils/colors.dart';
import 'package:app/widgets/list_widget.dart';
import 'package:app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 350,width: 400,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(40.0),color: buttonColor ),),
                Positioned(left: 20.0,top: 70.0, child: textWidget("My Profile", Colors.white, 20.0, FontWeight.bold)),
                Positioned(left: 340.0,top: 70.0, child: Icon(Icons.share,color: Colors.white,)),
                Positioned(left: 110.0,top: 100.0,child: GestureDetector(onTap: (){
                  Get.to(LoginPage());
                }, child: Image.asset("assets/images/profile.png"))),
                Positioned(left: 125.0,top: 230.0,child: textWidget("Justin Hafizdzaki text", Colors.white, 16.0, FontWeight.bold)),
                Positioned(left: 130.0,top: 260.0,child: textWidget("hafizdzaki@gmail.com", Colors.white, 14.0, FontWeight.normal)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:18.0,horizontal: 16.0),
            child: Row(children: [textWidget("General", Colors.white, 18.0, FontWeight.bold)],),
          ),
          listWidget(Icon(Icons.account_circle_rounded,color: subSecColor,), textWidget("Personal Data", Colors.white, 14.0, FontWeight.normal), Icon(Icons.arrow_right,color: Colors.white,)),
          SizedBox(height: 4.0,),
          listWidget(Icon(Icons.payment,color: subSecColor,), textWidget("Payments", Colors.white, 14.0, FontWeight.normal), Icon(Icons.arrow_right,color: Colors.white,)),
          SizedBox(height: 4.0,),
          listWidget(Icon(Icons.reviews,color: subSecColor,), textWidget("Reviews", Colors.white, 14.0, FontWeight.normal), Icon(Icons.arrow_right,color: Colors.white,)),
          SizedBox(height: 4.0,),
          listWidget(Icon(Icons.document_scanner,color: subSecColor,), textWidget("Certificate", Colors.white, 14.0, FontWeight.normal), Icon(Icons.arrow_right,color: Colors.white,)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:10.0,horizontal: 16.0),
            child: Row(children: [textWidget("Others", Colors.white, 18.0, FontWeight.bold)],),
          ),
          listWidget(Icon(Icons.settings,color: subSecColor,), textWidget("Settings", Colors.white, 14.0, FontWeight.normal), Icon(Icons.arrow_right,color: Colors.white,)),
         
        ],
      ),
    
    );
  }
}
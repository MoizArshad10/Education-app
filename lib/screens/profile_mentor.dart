import 'package:app/screens/profile.dart';
import 'package:app/widgets/container_widget.dart';
import 'package:app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class ProfileMentor extends StatelessWidget {
  const ProfileMentor({super.key});

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
        ]),title: textWidget("Profile Mentor", Colors.white, 22.0, FontWeight.normal), actions: [GestureDetector(
onTap: (){
  Get.to(ProfilePage());
},          child: Image.asset("assets/images/share.png"))],),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Stack(children: [Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 20.0),
              child: Container(height: 200,width: 350,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: buttonColor
              ),),),
              Positioned(top: 20,left: 150, child: Image.asset("assets/images/profilementor.png")),
              Positioned(top: 110.0,left: 120, child: textWidget("Azamat Baimatov", Colors.white, 18.0, FontWeight.bold)),
              Positioned(top: 140.0,left: 130,child: textWidget("Senior UI/UX Designer", Colors.grey, 12.0, FontWeight.normal)),
              Positioned(top: 180.0,left: 90,child: textWidget("5", Colors.white, 14.0, FontWeight.bold)),
              Positioned(top: 180.0,left: 200,child: textWidget("17", Colors.white, 14.0, FontWeight.bold)),
              Positioned(top: 180.0,left: 310,child: textWidget("5", Colors.white, 14.0, FontWeight.bold)),
              Positioned(top: 200.0,left: 70,child: textWidget("Courses", Colors.grey, 14.0, FontWeight.bold)),
              Positioned(top: 200.0,left: 180,child: textWidget("Students", Colors.grey, 14.0, FontWeight.bold)),
              Positioned(top: 200.0,left: 290,child: textWidget("Reviews", Colors.grey, 14.0, FontWeight.bold)),
              ],),
              TabBar(unselectedLabelColor: Colors.white ,indicatorColor: subSecColor,labelColor: subSecColor,
                  tabs: [Text("About"),Text("Courses"),Text("Reviews")]),
                  Padding(padding: EdgeInsets.only(left: 10.0,top: 20.0,),child: 
                  textWidget('''Hi My name is Azamat Baimatov, i work as a Senior UI/UX Designer in on of the biggest E-commerce in Indonesia, i Have more than 10 years of experience UI/UX Design in Startup & Corporate.
 
 . First we’ll describe the brief & how to work with a UX 
   persona.

 . Then you’ll learn how to create simple wireframes.

 . From there we’ll look at how to implement colours 
   & images properly in your designs.

 . You’ll learn the do’s & don’ts around choosing fonts 
   for web & mobile apps.

. You’ll learn how to create your own icons, buttons & 
  other UI components.''', Colors.white, 14.0, FontWeight.normal)
          ,)],
        ),
      ),
    );
  }
}
import 'package:app/screens/login_page.dart';
import 'package:app/utils/colors.dart';
import 'package:app/widgets/button_widget.dart';
import 'package:app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: [
        Stack(
          children: [
            Image.asset("assets/images/splash.png"),
            Positioned(
              top: 60,
              left: 110,
              child: 
            textWidget("AiLearn", SecColor, 54.0, FontWeight.bold)),
            Positioned(
              top: 180,
              left: 50,
              child: Image.asset("assets/images/splashFrame.png"))
          ],
        ),
        SizedBox(height: 20,),  
        Row(
          children: [
            textWidget('''   Perangkat Lunak
  Pengolah Gambar Vektor''', MainColor, 24.0, FontWeight.bold)
          ],
        ),
        SizedBox(height: 20,),
        textWidget('''Jelajahi AiLearn untuk menambah kemampuanmu
dalam mengoperasikan Adobe Illustrator''', MainColor, 16.0, FontWeight.normal),

SizedBox(height: 40.0,),
buttonWidget((){Get.to(LoginPage());}, "MAUSK", MainColor, 40.0, 280.0,20.0 )

      ],
    ),);
  }
}
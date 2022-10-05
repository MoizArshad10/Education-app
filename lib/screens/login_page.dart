import 'package:app/screens/about_page.dart';
import 'package:app/screens/detail_page.dart';
import 'package:app/screens/register_page.dart';
import 'package:app/utils/colors.dart';
import 'package:app/widgets/button_widget.dart';
import 'package:app/widgets/text_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  login()async{
    final email =emailController.text;
    final password = passwordController.text;
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;

    try {
      final UserCredential user = await auth.signInWithEmailAndPassword(email: email, password: password);
      await db.collection("users").doc().get();
      Get.to(AboutPage());
      print("User Logged In!");
    } catch (e) {
      print("Error");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Stack(children: [
          Image.asset("assets/images/login.png"),
          Positioned(
            top: 10,
            left: 15,
            child: Icon(Icons.arrow_back_ios_sharp,color: MainColor,))
        ]),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left: 1.0),child: 
                  
        textWidget("Selamat Datang!", MainColor, 32.0, FontWeight.bold),),
               
            Padding(padding: EdgeInsets.only(left: 32 ,top: 8.0),child: 
          textWidget('''Masukan NISN dan password untuk
          memulai belajar sekarang''', MainColor, 18.0, FontWeight.normal),),
          SizedBox(height: 40.0,),
          Padding(
          padding: const EdgeInsets.all(18.0),
          child:   TextField(
          controller: emailController,
          decoration: InputDecoration(
          labelText: "Email",
          prefixIcon: Icon(Icons.account_box_sharp),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))
          ),),
          ),
          Padding(
          padding: const EdgeInsets.all(18.0),
          child:   TextField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
          labelText: "Password",
          prefixIcon: Icon(Icons.lock),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0))
          ),),
          ),
          SizedBox(height: 40.0,),
          buttonWidget((){login();}, "MULAI BELAJAR", MainColor, 40.0, 300.0, 22.0),
          buttonWidget((){Get.to(RegisterPage());}, "Register", MainColor, 40.0, 300.0, 22.0),
          
          ],
        ),
      ),
    );
  }
}
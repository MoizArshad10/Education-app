
import 'package:app/utils/colors.dart';
import 'package:app/widgets/container_widget.dart';
import 'package:app/widgets/grid_widget.dart';
import 'package:app/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('''Hi Hafiz 👋
Let’s Find Your Course!'''),
actions: [Row(children: [Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(height: 30,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(4.0),border: Border.all(color: Colors.grey)),child: Image.asset("assets/images/cart 2.png"),),
)
,Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(height: 30,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(4.0),border: Border.all(color: Colors.grey)),child: Image.asset("assets/images/notification2.png"),),
)],)],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(29.0),
            child: TextField(
              // autofocus: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: "Search Your course...",labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.search,color: Colors.white,),
                suffixIcon: Icon(Icons.settings,color: Colors.white,),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),)
            ),
          ),
       Expanded(
        key: key,
        flex: 2,
        child: gridWidget("assets/images/coding website.png", "Coding")),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            textWidget("Continue Your Lessons", Colors.white, 24.0, FontWeight.bold),
            textWidget("See all", subSecColor, 16.0, FontWeight.normal)
          ],
        ),
        SizedBox(height: 4.0,),
        containerWidget((){}),
        SizedBox(height: 8.0,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            textWidget("Recommendation Course", Colors.white, 24.0, FontWeight.bold),
            textWidget("See all", subSecColor, 16.0, FontWeight.normal)
          ],
        ),
        SizedBox(height: 8.0,),

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Image.asset("assets/images/home1.png"),Image.asset("assets/images/home2.png")],)
        ],
      ),
    );
  }
}
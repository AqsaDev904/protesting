
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: "Frame",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                TextSpan(
                  text: "Wise",
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            const CircleAvatar(
              radius: 25,
              backgroundColor: Color.fromARGB(255, 7, 25, 39),
              child: Icon(
                Icons.person,
                color: Colors.lightBlue,
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        
       body: Column(
        children: [
          
          Container(
            decoration: BoxDecoration(
              border: Border.all(

              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRect(
              child: Stack(
              
              children: [
                Image.asset(
                  "dfdd.webp",
                  width: 600,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text("Analyze your video and detect any issues"),
                    ],
                  ),
                )
              ],
              ),
            ),
          )
        ],
       ),
      ),
    );
  }
}


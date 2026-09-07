import 'package:flutter/material.dart';
void main(){
  runApp(const MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
      appBar:  AppBar(
        backgroundColor:Colors.white70,
        title: Text ("my app"),
        actions: [
        TextButton(onPressed: (){
print("what uh want");
        },
        child: const Text("search")),
        TextButton(onPressed: (){
          print("home");
        },
        child: const Text("goood luck" ),
        ),
        ]
      ),

      ),
    
   
    );
  }
}
import 'package:flutter/material.dart';

class Again extends StatelessWidget {
  const  Again({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Show dialoge"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
showDialog(context: context,
 
 builder: (Context){
  
  return AlertDialog(
title: Text("Add student"),
content: TextField(
  decoration: InputDecoration(
    labelText: "Name student",
  ),
),
actions: [
  TextButton(onPressed: (){
    Navigator.pop(context);
  }, child: Text("cancel"),),
],
  );
 },
 
 );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
            ),
             child: Text("Login"),),
          ],
        ),
      ),
    );
  }
}
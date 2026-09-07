import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home : Scaffold(
        appBar : AppBar(
          title : Text ("login"),
        ),
body : Center(
  child: Container(
width : 200,
height : 100,
child: Column(
  children: [
    Text("email"),
    Text("password"),
  ],
),
  ),
),
      ),
    ),
  );

}
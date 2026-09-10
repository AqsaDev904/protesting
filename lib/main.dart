import 'package:flutter/material.dart';
import 'package:protesting/lec2parr.dart';
import 'package:protesting/mail.dart';
import 'package:protesting/signin_screen.dart';

import 'package:protesting/login_Screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  signin_Screen()  ,
        );
  }

 

}
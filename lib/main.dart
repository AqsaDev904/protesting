import 'package:flutter/foundation.dart' hide Factory;
import 'package:flutter/material.dart';
import 'package:protesting/lec2parr.dart';
import 'package:protesting/mail.dart';
import 'package:protesting/Factory.dart';
import 'package:protesting/product.dart';
import 'package:protesting/Constructor.dart';
import 'package:protesting/login_Screen.dart';
import 'package:protesting/Named.dart';
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
home: Factory(),      
        );
  }

}

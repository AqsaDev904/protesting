import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Listview", style: 
          TextStyle(
            
          ),),

        ),
        
       body : ListView(
children: [
  ListTile(
leading: Icon(Icons.person),
title: Text("Aqsa"),
 subtitle: Text("Student"),
  ),
  ListTile(
leading: Icon(Icons.email),
      title: Text("Email"),
      subtitle: Text("abc@gmail.com"),
  ),
  ListTile(
leading: Icon(Icons.shopping_bag),
title : Text("NAME : AQSA"),
subtitle : Text("Product : bags"),
  ),
],

       ),
       
         
          ),
       
      
    );
  }
}
import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  const Field({super.key});

  @override
 
  State<Field> createState() => _FieldState();
}

class _FieldState extends State<Field> {

   TextEditingController nameController = TextEditingController(text: "aqsa");
  @override
  Widget build(BuildContext context) {
    return  Scaffold(



body: Column(
  children: [
    TextField(
      controller: nameController,
      decoration: InputDecoration(
    labelText: "name",
    hintText: "Enter name",
    suffixIcon: Icon(Icons.person),
    prefixIcon: Icon(Icons.person),
    filled: true,
    fillColor: Colors.grey,
      ),
    )
  ],
),
    );

  }
}
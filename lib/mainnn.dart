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
          title: Text("ListView Builder"),
        ),

        body: ListView.builder(
          itemCount: 10,

          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.person),
              title: Text("Student ${index + 1}"),
              subtitle: Text("This is student ${index + 1}"),
            );
          },
        ),
      ),
    );
  }
}
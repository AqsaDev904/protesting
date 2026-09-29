import 'package:flutter/material.dart';

class Constructor extends StatelessWidget {
  const Constructor({super.key});

  @override
  Widget build(BuildContext context) {
    
  Student s1 = Student( "aqsa", "I t" , "5th");
  Student s2 = Student( "aqsa", "I t" , "5th");
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Icon(Icons.person),
            Text(s1.name),
            Text(s1.course),
            Text(s1.Semester),
              Icon(Icons.person),
            Text(s2.name),
            Text(s2.course),
            Text(s2.Semester),
          ],
          
        ),
      ),
    );
  }
}
class Student{
  String name = "";
  String course = "";
  String Semester ="";
  Student(this.name,this.course,this.Semester){

  }
}

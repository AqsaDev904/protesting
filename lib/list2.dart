import 'package:protesting/lec1par.dart';

class Student {
  String name  = "";
  int age  = 0 ;
  String course = "";

  Student({
required this.name,
required this.age,
required this.course,
  }
  );
}
List  <Student>  students = [
Student(name: "aqsa", age: 21, course: "IT"),
Student(name: "AZKA", age: 21, course: "MATH"),
Student(name: "ANAMA", age: 21, course: "IT"),
];
void filterlist(){
List <Student> result = 
students.where((m)=>m.course=="IT").toList();
print(result);
for(Student n in result){
  print(n.name);
}
}



void main(){
filterlist();
}

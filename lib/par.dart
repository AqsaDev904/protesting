
import 'dart:async';

/// 1️⃣ Create 5 variables:
/// - 1 using var
class Student{
String name8 = "aqsayy";
int age45 =  32;
double height6 = 5.4;
  bool isstudent =  true ;



var name = "aqsa";
var school ="Govt";
var  clg ="private";
var fathername ="M.yousaf";
var friends ="whatever";
var age = 23;
/// - 2 using final
final pie  =  3.14;
final height = 5.4;
final  age2 = 21;
final String name2 = "aqsa8";
final name3 = "aqsayyy";

// concatination

String names = "abubaker";
String namess = "yousaf";


String get fullname => names + " " + names;
// interpolation
String namesss = "aqsa";


int age90 = 20;


List<int>  age09 =[11,23,32];
String age5 ="90";
int get number => int.parse(age5);


}
void main(){
Student student = Student();
print ("name8 : $student.name");
print ("age45 : $student.age");
print ("height6 :$student.height");

print (student.fullname);


print ("${student.namesss}");

print ("${student.age90 + 1}");
print(student.fullname.length);
print(student.age09.length);
print(student.namesss.toUpperCase());
print(student.namesss.contains("aq"));
print(student.namesss.replaceAll("aq","sa"));
print(student.fullname.substring(0,8));
print(student.number);
}



import 'dart:async';
class  student{
  String name = "aqsa";
  String name3 = "yousaf";
  String get fullname => name + " " +name3;

String str = "250";
int get nmbr => int.parse(str);
String word ="madam";
String get reserved => word.split('').reversed.join();
 
void check(){
   if (word == reserved){
  print(" palindrome");
}
else {
  print("not");
}
}
}
void main(){
  student s1 = student();
 print (s1.fullname);
 print(s1.fullname.toUpperCase());
 
 print(s1.fullname.replaceAll("aq","sa"));
print(s1.nmbr*4);
s1.check();
}
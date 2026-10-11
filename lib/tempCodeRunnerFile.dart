import 'package:protesting/lec1par.dart';

class Student{
Map<String,int> mark = {
"ali"  : 3,
"ahmad"  : 33,
"aqsa" : 9 ,
};
void addall(){
  mark.addAll({
"sarmad" : 45 ,
"ali" : 23,
   });
}
}
void main(){
  Student s1 =  Student();
print(s1.mark);
print(s1.addall);
}
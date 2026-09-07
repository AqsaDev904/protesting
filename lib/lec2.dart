import 'dart:io';

class Con {
  String password = "12345";
String light =  "yellow";
String name = "aqsay379@gmail.com";
String password2 = "2323";
void chck2(){
  if ( name=="aqsay379@gmail.com" )
  if ( password2 == "2323");
print("login in succesfully");
}
void chck(){
if (light == "red"){
  print ("go");
}
else if (light == "pink"){
  print("wait");
}
else 
print("wrong");
}
  void check(String userPassword) {
    if (userPassword == password) {
      print("login successfully");
    } else {
      print("wrong password");
    }
  }
}

void main() {
  Con c1 = Con();

  print("enter password");
  String? userPassword = stdin.readLineSync();

  c1.check(userPassword!);
  c1.chck();
  c1.chck2();
}

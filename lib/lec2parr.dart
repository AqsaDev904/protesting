import 'dart:io';

class login {
  String serverName = "aqsay379@gmail.com";
  String serveruserPassword = "12345";

  void check(String userName, String userPassword) {
    if (userPassword.toUpperCase() == serveruserPassword.toUpperCase()) {
      print("password correct");
    }
    else{
      print("wrong password");
    }

    if (userName.toUpperCase() == serverName.toUpperCase()) {
      print("email correct");
    }
    else{
      print("wrong email");
    }
  }
}

void main() {
  login l1 = login();

  print("enter email");
  String? userName = stdin.readLineSync();
   print("enter password");
  String? userPassword = stdin.readLineSync();
if(!RegExp(r'[!@#$%^&*]').hasMatch(userPassword!)){
  print("Please enter a special character");
}
  l1.check(userName!, userPassword!);
}
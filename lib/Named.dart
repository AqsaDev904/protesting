import 'package:flutter/material.dart';

class Named extends StatelessWidget {
  const Named({super.key});


  @override
  Widget build(BuildContext context) {
    User u1 = User ("Aqsa","aqsay3255gmail");
    User user = User.fromGoogle("Aqsa", "aqsa@gmail.com");

    return Scaffold(
      body: Padding(
        padding: EdgeInsetsDirectional.all(23),
        child: Row(
          children: [
            Text(user.name),
            SizedBox(width: 30,),
            Text(user.email),
          ],
        ),
       ),
    )
    ;
  }
}
class User {
  String name = "";
  String email= "";
  User(this.name,this.email);
  User.fromGoogle(this.name, this.email);
}
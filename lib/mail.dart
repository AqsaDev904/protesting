import 'package:flutter/material.dart';
void main() {
  runApp(const MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sign up",style: 
              TextStyle(
                fontSize: 30,
              ),),
              Text("Create account to start your framing memory",style: TextStyle(
                fontSize: 15,
                color: Colors.lightBlue,
              ),)
            ],
          )
        ),
   body:SingleChildScrollView(
   child:  Padding(
  padding: EdgeInsets.all(20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Row(
        children: [
          Icon(Icons.email),
          SizedBox(width: 10),
          Text(
            "Email",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),

      SizedBox(height: 10),

      TextField(
        decoration: InputDecoration(
          hintText: "Enter your email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      SizedBox(height: 20,),
Row(
children: [
  Icon(
    Icons.person,
  ),
    SizedBox(width: 10,),
  Text("Username"),],
),
SizedBox(height: 10,),
TextField(
  decoration: InputDecoration(
    hintText: "Enter your username",
     border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
  ),
),
SizedBox(height: 20,),
Row(
  children: [
Icon(
  Icons.lock,
),


SizedBox(width: 10,),
Text("Password"),


  ],
),
SizedBox(height: 20,),
TextField(
   decoration: InputDecoration(
    hintText: "Enter your Paaword",
     border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
  ),
),

SizedBox(height: 20,),
Row(
  children: [
Icon(
  Icons.lock,
),


SizedBox(width: 10,),
Text("Confirm Password"),


  ],
),
SizedBox(height: 20,),
TextField(
   decoration: InputDecoration(
    hintText: "Enter your conform Password",
     border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
  ),
),
SizedBox(height: 20,),

Center(
  child: SizedBox(
    width: 300,
    height: 50,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
backgroundColor: Colors.blue,
      ),
      onPressed: () {
       
      },
      child: Text("Register",
      style: TextStyle(
        fontSize: 20,
      ),
      ),
    ),
  ),
),
SizedBox(height: 10,),
 Row(
   mainAxisAlignment: MainAxisAlignment.center,

    children: [

      Text("Already have an account?"),
      Text("Login",
      style: TextStyle(
        color: Colors.blue,
      ),)
    ],
    ),



    ],

  ),
),
   ),
      ),
    );
  }
}
import 'dart:developer';

import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  // password saved

  static const String saveemail = "abc@gmail.com";

  static const String savepassword = "aqsa1123";

  static const String savename = "aqsa";

  String message = ""; 

  bool isloading = false; 

  Future<void> signin() async {
    setState(() {
    isloading = true ; 
    });
     await Future.delayed(Duration(seconds: 1));  
    if (emailController.text.isEmpty) {
      setState(() {
        message = "Email is requred";
        isloading = false ; 
      });
    }

    if (passwordController.text.isEmpty) {
      setState(() {
        message = "Password is requred";
        isloading = false ; 
      });
    }

    if (nameController.text.isEmpty) {
      setState(() {
        message = " name is required ";
        isloading = false ; 
      });
    }

    if (emailController.text == saveemail &&
        passwordController.text == savepassword &&
        nameController.text == savename) {
      setState(() {
        message = "Congratulation , to our app";  
        isloading = false ; 
      });

    } else {
      setState(() {
        message = "incorrect, everything";
        isloading = false ; 
      });
    }

     emailController.clear(); 
     passwordController.clear(); 
     nameController.clear(); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 105, 146),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 2, 67, 79),
        title: Icon(Icons.arrow_back_rounded, color: Colors.white),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Column(
            children: [
               Text(message),
              Text("Create your Account",style: 
              TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),),
                            Text("Join this trending app",style: 
              TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),),
            SizedBox(height: 20,),
           TextField(
              controller: emailController,
  decoration: InputDecoration(

    hintText: "Enter your Email",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),

                  prefixIcon: const Icon(Icons.email, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: "Enter your Passwords",
                  hintStyle: const TextStyle(color: Colors.grey),

                  prefixIcon: const Icon(Icons.password, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  hintText: "Enter your Name",
                  hintStyle: const TextStyle(color: Colors.grey),

                  prefixIcon: const Icon(Icons.person, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 23),
            
            isloading == true ? 
               CircularProgressIndicator(color: Colors.amber,)
              :
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(1000, 50),
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  signin();
                  log(message);
                },
                child: Text(
                  "sign in",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 213, 241, 241),
                    fontSize: 20,
                  ),
                ),
              ),
            
              SizedBox(height: 20),
              Text("..........Or continue with.........."),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata_rounded, size: 44),
                    Icon(Icons.apple, size: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

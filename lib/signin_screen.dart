import 'package:flutter/material.dart';

class signin_Screen extends StatefulWidget {
  const signin_Screen({super.key});

  @override
  State<signin_Screen> createState() => signin_ScreenState();
}

class signin_ScreenState extends State<signin_Screen> {

TextEditingController emailController =   TextEditingController();

TextEditingController passwordController= TextEditingController();

TextEditingController nameController= TextEditingController();

// password saved

static const String saveemail = "abc@gmail.com";

static const  String savepassword = "aqsa1123";

static const String savename = "aqsa";

 String message = "";

  
   


  

void signin()
{
  print("email: '${emailController.text}'");
  print("password : '${passwordController.text}'");
  print("name : '${nameController.text}'");

 if (emailController.text.isEmpty) {
      setState(() {
       print("message required");
      });

}
if(passwordController.text.isEmpty){
  setState(() {
    print("message required");
  });
}

if(nameController.text.isEmpty){
  setState(() {
    print("message required");
  });
}
if (emailController == saveemail && passwordController == savepassword && nameController ==savename){
  setState(() {
    print("Congratulation , to our app");
  });
  
}
else
setState(() {
  print("incorrect, everything");
});



}










  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 105, 146),
      appBar: AppBar(
           backgroundColor: const Color.fromARGB(255, 2, 67, 79),
title: Icon(

  Icons.arrow_back_rounded,
  color: Colors.white,
),
      ),
      body: Padding(
        padding:EdgeInsets.all(24),
        child: Center(
          child: Column(
            
            children: [
               Text(messag
               e),
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

    prefixIcon: const Icon(
      Icons.email,
      color: Colors.grey,
    ),
     filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  ),
),
  SizedBox(height: 20,),
           TextField(
                                    controller: passwordController,
  decoration: InputDecoration(
    hintText: "Enter your Passwords",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),

    prefixIcon: const Icon(
      Icons.password,
      color: Colors.grey,
    ),
     filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  ),
),
  SizedBox(height: 20,),
           TextField(
              controller: nameController,
  decoration: InputDecoration(
    hintText: "Enter your Name",
    hintStyle: const TextStyle(
      color: Colors.grey,
    ),

    prefixIcon: const Icon(
      Icons.person,
      color: Colors.grey,
    ),
     filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide.none,
    ),
  ),
),
SizedBox(height: 23,),
ElevatedButton(
  style: ElevatedButton.styleFrom(
    minimumSize: Size(1000, 50),
    backgroundColor:Colors.blueGrey,
  
  ),
  onPressed: (){
   signin();
     print(message);

  },
  child: Text("sign in",style: 
  TextStyle(
    color: const Color.fromARGB(255, 213, 241, 241),
    fontSize: 20,
    
  ),)),
  SizedBox(height: 20,),
  Text("..........Or continue with.........."),
   SizedBox(height: 20,),
  Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.g_mobiledata_rounded,
          size: 44,
        ),
         Icon(
          Icons.apple,
          size: 30,
        ),
      ],
    ),
  ),
   ],
          ),
       
        ),
      ),
    ) ;
  }
}
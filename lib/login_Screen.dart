import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: const Color.fromARGB(255, 230, 159, 134),
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 230, 159, 134),
      ),

      body: Column(
        children: [
          Expanded(
           
            child: Container(
              color: const Color.fromARGB(255, 230, 159, 134),

              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      "cook.png",
                      width: 200,
                    ),

                    Text(
                      "Home cook maid",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                        color: const Color.fromARGB(255, 51, 14, 2),
                      ),
                    ),

                    Text(
                      "Feel free to cook and treat yourself",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 51, 14, 2),
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Expanded(
        
            child: Container(
              width: double.infinity,
  decoration: BoxDecoration(
    color: const Color.fromARGB(255, 223, 211, 211),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30),
      topRight: Radius.circular(30),
    ),
  ),
              

              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to login page",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                          color: const Color.fromARGB(255, 15, 11, 9),
                        ),
                      ),

                      Text(
                        "Login to continue using our platform",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blueGrey,
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your mail",
                        ),
                      ),

                      SizedBox(height: 20),

                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      TextField(
                        
                        decoration: InputDecoration(
                        
                         
                          hintText: "Enter your Password",
                         
                        suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),
                   Align(
                    alignment: Alignment.centerRight,
                   child:  Text("Forgot your password?",style: 
                   TextStyle(
                    color: Colors.brown,
                    fontSize: 17,
                    fontWeight: FontWeight.w200,


                   ),),
                   ),
                    SizedBox(height: 20,),
                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  
                    backgroundColor: const Color.fromARGB(255, 63, 37, 28),
                     minimumSize: Size(10000, 50),
                  
                  ),
                 onPressed: (){

                 }, child: Text("Login",
                 style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                 ),
                 
                 
                 
                 ),),
                 SizedBox(height: 20,),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  
                    backgroundColor: const Color.fromARGB(255, 236, 199, 187),
                     minimumSize: Size(10000, 50),
                  
                  ),
                 onPressed: (){

                 }, child: Text("Login with Google", 
                 style: TextStyle(
                  color: const Color.fromARGB(255, 54, 53, 53),
                  fontSize: 18,
                 ),
                 
                 
                 
                 ),),
                 SizedBox(height: 20,),
                 Center(
                  
                   child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                   Text("Don't Have account?"),
                     SizedBox(width: 6,),
                    Text("Sign up",style:TextStyle(
                      color: const Color.fromARGB(255, 80, 26, 6),
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ) ,),
                     ],
                    ),
                 ),
                   
                    ],
                   
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
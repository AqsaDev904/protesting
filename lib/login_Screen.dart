import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // user sa text lena ka liya han 
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
// message store kr liya ha
  static const String savedEmail = "aqsaydost@gmail.com";
  static const String savedpass = "aqsa@786";
  String message = "";

 bool isloading = false;





// console ma user ki input printkrta ha
  Future<void> login() async{
    setState(() {
      isloading = true;
    });
 await Future.delayed(Duration(seconds: 1));  

    print("email: '${emailController.text}'");
    print("pass: '${passwordController.text}'");
// agr begir kuch likha email pr pres kiya ha
    if (emailController.text.isEmpty) {
      setState(() {
        message = "email required!";
        isloading = false;
      });
      return;
    }

    if (passwordController.text.isEmpty) {
      setState(() {
        message = "password required!";
         isloading = false;
      });
      return;
    }
// space khtm kr dy ga or yahan variable b create kiya han 
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email == savedEmail && password == savedpass) {
      setState(() {
        message = "Login successfully";
         isloading = false;
      });
    } else {
      setState(() {
        message = "invalid credentials";
         isloading = false;
      });
    }

    print("entered email: '$email'");
    print("saved email: '$savedEmail'");
    print("entered pass: '$password'");
    print("saved pass: '$savedpass'");

// clear

emailController.clear();
passwordController.clear();


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 159, 134),

      body: Column(
        children: [
          SizedBox(height: 35),
          Text(message),

          Image.asset("cook.png", width: 200, height: 200, fit: BoxFit.cover),
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

          SizedBox(height: 30),

          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 223, 211, 211),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),

              child: ListView(
                children: [
                  Column(
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
                        style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                      ),

                      SizedBox(height: 25),

                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "Enter your mail",
                        ),
                      ),

                      SizedBox(height: 25),

                      Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.brown,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Enter your Password",
                          suffixIcon: Icon(Icons.remove_red_eye),
                        ),
                      ),

                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forgot your password?",
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),

                      isloading == true ? 
               CircularProgressIndicator(color: Colors.amber,)
              :
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            63,
                            37,
                            28,
                          ),
                          minimumSize: Size(10000, 50),
                        ),
                        onPressed: () {
                          login();
                          print(message);
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 25),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            236,
                            199,
                            187,
                          ),
                          minimumSize: Size(10000, 50),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Login with Google",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 54, 53, 53),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: .center,
                          children: [
                            Text("Don't Have account?"),
                            SizedBox(width: 6),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 80, 26, 6),
                                fontSize: 17,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';



class Factory extends StatelessWidget {
  const Factory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              "Choose your account",
              style: TextStyle(fontSize: 24),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                print("customer");
                 User user = User.create("customer");
                   print(user.runtimeType);
              },
              child: Text("Customer"),
               
 
            ),

            SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                  User user = User.create("Seller");
  print(user.runtimeType);
               
              },
              child: Text("Seller"),
            ),
          ],
        ),
      ),
    );
  }
}
class User {
  User();
  factory User.create(String type) {
    if (type == "customer") {
      return Customer();
    } else {
      return Seller();
    }
  }
}

class Customer extends User{
}

class Seller extends User {
}
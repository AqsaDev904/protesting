// Define the Class: Create a class named Car.
// * Add Properties: Give it three variables: name, model, and price. 
// * The Action: Create a method inside the class called displayDetails() that prints all the car's info in a nice format.
// * The Execution: In your main() function:
// * Create two different Car objects (e.g., a Tesla and a Toyota).
// * Call displayDetails() for both.

import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

//  bank account 


// Level 2: The Logic (BankAccount Class)

// * Goal: Simulate real-world behavior using "State" (variables) and "Logic" (functions).
// * Define the Class: Create a class named BankAccount.
// * Add Properties:
//  accountHolder (String)
//  balance (double) — Initialize this at 0.0 or through the constructor.
// * The Behavior (Methods):
//  deposit(double amount): Should add money to the balance and print the new total.
//  withdraw(double amount):
// ! Challenge: Check if the user has enough money before withdrawing!
// * If they have enough, subtract it. If not, print "Insufficient Funds."

class BankAccount{
  String accountholder ="";
  double balance = 0.0;
void  deposit(double amount){
balance = balance + amount;
print("balance is : $balance");
}
void withdraw(double amount){
  if (balance>=amount){
balance = balance - amount;
print("balance is now: &balance");
  }
else{
  print("insufficient balance");
}
}
}
void main(){
  BankAccount b1 = BankAccount();
  b1.accountholder = "Aqsa";
  b1.deposit(233);
  b1.withdraw(45);
  
}
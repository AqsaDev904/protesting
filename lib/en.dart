// Encapsulation
// Data ko cotrol krna or getter and setter ka through access dena
// Question:
// Ek BankAccount class banao:

// balance ko private rakho.
// Getter se balance dekh sako.
// Setter se balance change karo.
// Setter mein check lagao ke balance negative na ho.

// class  BankAccount {
//   double _balance = 0.0;
//   void setbalance( double values){
//     if(values>0){
//     _balance = values;
//     }
    
//   }
//    double getbalance(){
//     return  _balance;
//   }
   
// }
// void main(){
// BankAccount b1 = BankAccount();
// b1.setbalance(20000);
//    print(b1.getbalance());
// }



// Ek Animal class banao:

// Property: name
// Method: eat() jo print kare "Animal is eating"
// Phir Dog class banao jo Animal ko inherit kare.
// main mein Dog ka object banao.
// Object se name print karo aur eat() method call karo.

// Tum khud code likho.


// class Animal{
//   String name =  "cat";
//   void eat(){
//     print("Animal is eatng");
//   }
// }
//  class Dog extends Animal{

//  }

// void main(){
//   Dog d1 = Dog();
//   print(d1.name);

// }
// inheritance with supper

// Ek Vehicle class banao jisme brand = "Toyota" ho.

// Phir Car class ko Vehicle se inherit karo.

// super use karke Car class mein brand print karo.

class Vehicle{
  String brand ="Toyota";
  void display(){
    print("parent class");
  }
}
class Car  extends Vehicle{
  void showDetails(){
  print(super.brand);
  }}
  void main(){
    Car c1 = Car();
    c1.showDetails();
  }

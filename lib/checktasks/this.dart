// ? Task 1: Method Practice

// * Create a class "Laptop"
// * Add properties: brand, price
// * Create a method showDetails() that prints both values
// * Create 2 objects and call the method


// class Laptop{
//   String brand = "";
//   double price = 0.0;
// void showDetails(){
//   print("Brand is $brand");
//   print("Price is : $price");
// }

// }
// void main(){
//   Laptop L1 = Laptop();
// L1.brand = "dell";
// L1.price = 1000000;
// L1.showDetails();
// Laptop l2 = Laptop();
// l2.brand= "hp";
// l2.price = 1000000;
// }
// ? Task 2: Understanding "this"

// * Create a class "Point"
// * Add properties: x, y
// * Create a method setValues(int x, int y)
// * Use "this" keyword to assign values correctly
// * Print values using another method


// class Point{
//   int x = 0;
//   int y = 0;
// void setValues(int x,int y ){
//   this.x = x;
//    this.y =  y;
// }
// void prints(){
//   print("$x");
//   print("$y");

// }
// }
// void main(){
//   Point p1 = Point();
//   p1.x= 12;
//   p1.y =23;
//   p1.prints();

// }

//  Task 3: Getter Practice

// * Create a class "Circle"
// * Add property: radius
// * Create a getter "area"
// * Formula: 3.14 * radius * radius
// * Print area using object

// class Circle{
//   double radius = 2;
  
//   double get area{
//     return  3.14 * radius * radius;
//   }
//   void display(){
//     print("Area is : $area ");
//   }

// }
// void main(){
// Circle c1 = Circle();

// c1.display();
// }

// ? Task 4: Setter with Validation

// * Create a class "Student"
// * Add private variable _marks
// * Create setter marks:
//   - if marks >= 0 and <= 100 → assign
//   - otherwise print "Invalid Marks"
// * Create getter to read marks

import 'package:flutter/foundation.dart';

class Student{
  int _marks = 0;
  void setmarks (int values){
  

  
  if ( values >=0 && values<=100){
     
    print("Assign");
  }
  else
  {
    print("invalid mark");
  }
  }
  int get marks{
    return _marks;
  
  }
}
void main(){
  Student s1 = Student();
  s1._marks= 99;
  print(s1.marks);

}

//  Task 5: Combined Practice


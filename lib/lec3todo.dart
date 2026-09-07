import 'dart:io';
// 1️⃣ Create a program:
//     - Input number (1–7)
//     - Print weekday name
class day {
  void check(){
    print ("enter day :");
    String weakday = stdin.readLineSync()!;
    switch(weakday){
      case "1":
      print("monday");
      break;
      case "2":
      print("tuesday");
      break;

case "3":
      print("wednesday");
      break;
      case "4":
      print("thursday");
      break;
      case "5":
      print("friday");
      break;
       case "6":
      print("satuday");
      break;
       case "7":
      print("sunday");
      break;
    }

  }
  

}
void main(){
  day d1 = day();
  d1.check();
    
  }

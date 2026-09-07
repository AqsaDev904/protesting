import 'dart:io';

class system{


  void check(){
      print("Enter command (start/stop):");

  String command = stdin.readLineSync()!;
    switch(command){
      case "start":
      print("system start");
      break;
case "stop":
      print("system stop");
      break;
      case "pause":
      print("system pause");
      break;
        default:
    print("Unknown command");
    }
     
  }
}
void main(){
  system s1 = system();
  s1.check();
}
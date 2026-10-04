import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 30, 153),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.manage_accounts,color: Colors.purple,),
            SizedBox(width: 10,),
            Text("Books Record",style: TextStyle(
              color: Colors.purple,
            ),),
          ],
        ),
      ),

body: Center(

  child: Container(
    padding: EdgeInsets.all(31),
    width: 800,
    height: 400,
    decoration: BoxDecoration(
      color: Colors.white,
       borderRadius: BorderRadius.circular(5),
     
    ),

    
    child: Column(
   
      children: [
        TextField(
    decoration: InputDecoration(
      
      icon: Icon(Icons.person,color: Colors.purple,),
      labelText: "Book name",labelStyle: TextStyle(
        color: Colors.purple,
      ),
      hintText: "Enter your book",
    ),
        ),
        SizedBox(height: 20,),
          TextField(
    decoration: InputDecoration(
      
      icon: Icon(Icons.person,color: Colors.purple,),
      labelText: "Auttor",labelStyle: TextStyle(
        color: Colors.purple,
      ),
      hintText: "Enter Author name",
    ),
        ),
        SizedBox(height: 20,),
          TextField(
    decoration: InputDecoration(
      
      icon: Icon(Icons.money,color: Colors.purple,),
      labelText: "Price",labelStyle: TextStyle(
        color: Colors.purple,
      ),
      hintText: "Enter price",
    ),
        ),
        SizedBox(height: 20,),
          TextField(
    decoration: InputDecoration(
      
      icon: Icon(Icons.local_fire_department,color: Colors.purple,),
      labelText: "Department",labelStyle: TextStyle(
        color: Colors.purple,
      ),
      hintText: "Enter your department",
    ),
        ),
        SizedBox(height: 19,),
          Row(
children: [
  SizedBox(width: 120,),
  ElevatedButton.icon(onPressed: (){
    showDialog(context: context,
     builder: (context){
return AlertDialog(
title: Text("add student"),
content: Container(
  width: 200,
  height: 300,
  child: Column(
   
    children: [
      TextField(
        decoration: InputDecoration(
  labelText: "Name",
        ),
      ),
        TextField(
        decoration: InputDecoration(
  labelText: "Author",
        ),
      ),
        TextField(
        decoration: InputDecoration(
  labelText: "Price",
        ),
      ),
        TextField(
        decoration: InputDecoration(
  labelText: "Department",
        ),
      ),
      SizedBox(height: 10,),
   ElevatedButton(onPressed: (){
   }, child: Text("Add",style: TextStyle(
color: Colors.purple,
   ),),),
    SizedBox(height: 10,),
   ElevatedButton(onPressed: (){
     Navigator.pop(context);
   }, child: Text("Cancel",style: TextStyle(
color: Colors.purple,
   ),),),
    ],
  ),
),
);
     }
     );
  }, 
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.purple,
  ),
  icon: Icon(Icons.add ,color:Colors.white,),

  label: Text("Add book",style: TextStyle(
    color: Colors.white
  ),),
  ),
  SizedBox(width: 20,),
   ElevatedButton.icon(onPressed: (){}, 
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.purple,
  ),
  icon: Icon(Icons.delete ,color:Colors.white,),

  label: Text("Delete book",style: TextStyle(
    color: Colors.white
  ),),
  ),
  SizedBox(width: 20,),
   ElevatedButton.icon(onPressed: (){}, 
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.purple,
  ),
  icon: Icon(Icons.search ,color:Colors.white,),

  label: Text("Read  book",style: TextStyle(
    color: Colors.white
  ),),
  ),
],

    ),
    
      ],
   
    ),
  
  ),
  
),



    );

  }
}
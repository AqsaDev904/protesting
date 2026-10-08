import 'package:flutter/material.dart';

class Student extends StatefulWidget {
  const Student({super.key});

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {
  final nameController = TextEditingController();
final emailController = TextEditingController();
final phoneController = TextEditingController();
final departmentController = TextEditingController();

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
            Text("Studet Record",style: TextStyle(
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
          controller: nameController,
    decoration: InputDecoration(
      
      icon: Icon(Icons.person,color: Colors.purple,),
      labelText: "Student name",labelStyle: TextStyle(
        color: Colors.purple,
      ),
      hintText: "Enter your name",
    ),
        ),
        SizedBox(height: 20,),
          TextField(
            controller: emailController,

    decoration: InputDecoration(
      
      icon: Icon(Icons.email,color: Colors.purple,),
      labelText: "Email",labelStyle: TextStyle(
        color: Colors.purple,
      ),
      hintText: "Enter your email",
    ),
        ),
        SizedBox(height: 20,),
          TextField(
            controller: phoneController,

    decoration: InputDecoration(
      
      icon: Icon(Icons.call,color: Colors.purple,),
      labelText: "Phone no",labelStyle: TextStyle(
        color: Colors.purple,
      ),
      hintText: "Enter your Phone number",
    ),
        ),
        SizedBox(height: 20,),
          TextField(
            controller: departmentController,

    decoration: InputDecoration(
      
      icon: Icon(Icons.local_fire_department,color: Colors.purple,),
      labelText: "Department",labelStyle: TextStyle(
        color: Colors.purple,
      ),
      hintText: "Enter your department",
    ),
        ),
        SizedBox(height: 19,),
          Column(
            children: [
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
                      controller: nameController,

                      decoration: InputDecoration(
                labelText: "Name",
                      ),
                    ),
                      TextField(
                        controller: emailController,
                      decoration: InputDecoration(
                labelText: "Email",
                      ),
                    ),
                      TextField(
                      decoration: InputDecoration(
                labelText: "Phone number",
                      ),
                    ),
                      TextField(
                        controller: departmentController,

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
              
                label: Text("Add student",style: TextStyle(
                  color: Colors.white
                ),),
                ),
                SizedBox(width: 20,),
                 ElevatedButton.icon(onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                icon: Icon(Icons.delete ,color:Colors.white,),
              
                label: Text("Delete student",style: TextStyle(
                  color: Colors.white
                ),),
                ),
                SizedBox(width: 20,),
                 ElevatedButton.icon(onPressed: (){}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                icon: Icon(Icons.search ,color:Colors.white,),
              
                label: Text("Read student",style: TextStyle(
                  color: Colors.white
                ),),
                ),
              ],
              
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




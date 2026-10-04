import 'package:flutter/material.dart';
import 'package:protesting/lec1par.dart';
import 'Dashbrad.dart';
import 'Return.dart';
import 'Book.dart';
import 'Issue.dart';
import 'Student.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 3, 124),

      appBar: AppBar(
      
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.library_books_outlined),
            SizedBox(width: 10,),
            Text(
              "Library Management System",
              style: TextStyle(
                color: const Color.fromARGB(255, 102, 15, 89),
              ),
            ),
          ],
        ),
      ),

      body: Center(
        child: Container(
           width:300,
           height: 500,
          padding: EdgeInsets.all(30),

          decoration: BoxDecoration(
            
            color: Colors.white,
          
            borderRadius: BorderRadius.circular(20),
           boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 3,
                offset: Offset(12, 12),
              ),
            ],
          
        
          ),

          child: Column(
            children: [
              SizedBox(height: 30),

              // Dashboard
              ElevatedButton.icon(
               
                    onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Dashbrad(),
              ),
            );
          },
                icon: Icon(Icons.dashboard),
                label: Text(
                  "Dashboard",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 102, 15, 89),
                    fontSize: 15,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Total Books
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context)=> Student(),
                   ),
                   );
                },
                icon: Icon(Icons.menu_book),
                label: Text(
                  "Students Records",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 102, 15, 89),
                    fontSize: 15,
                  ),
                ),
              ),

              SizedBox(height: 30),

              
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=> Book(),
                   ),
                  );
                },
                icon: Icon(Icons.book),
                label: Text(
                  "Books  Record",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 102, 15, 89),
                    fontSize: 15,
                  ),
                ),
              ),

              SizedBox(height: 30),

             
              ElevatedButton.icon(
                onPressed: () {
                    Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=> Issue(),
                   ),
                   );

                  
                },
                icon: Icon(Icons.assignment_return),
                label: Text(
                  "Return Books Records",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 102, 15, 89),
                    fontSize: 15,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Search Books
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, 
                   MaterialPageRoute(builder: (context)=> Issue(),
                   ),
                   );

                },
                icon: Icon(Icons.search),
                label: Text(
                  "Issue books Records",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 102, 15, 89),
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
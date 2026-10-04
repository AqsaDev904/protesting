import 'package:flutter/material.dart';

class Dashbrad extends StatelessWidget {
  const Dashbrad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 3, 124),

      appBar: AppBar(
         
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(Icons.dashboard),
            SizedBox(width: 10,),
            Text(
              "Dashborad",
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
                onPressed: () {},
                icon: Icon(Icons.book_sharp),
                label: Text(
                  "Total book : 12",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 102, 15, 89),
                    fontSize: 15,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Total Books
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.person_2_outlined),
                label: Text(
                  "Total Students:400",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 102, 15, 89),
                    fontSize: 15,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Issue Books
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.book_online),
                label: Text(
                  "Issue Books:2",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 102, 15, 89),
                    fontSize: 15,
                  ),
                ),
              ),

              SizedBox(height: 30),

              // Return Books
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.assignment_return),
                label: Text(
                  "Return Books:1",
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
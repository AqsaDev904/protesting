import 'package:flutter/material.dart';

class System extends StatefulWidget {
  const System({super.key});

  @override
  State<System> createState() => _SystemState();
}

class _SystemState extends State<System> {

//  add krna ka liya
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  // Student List
  List<Student> students = [
    Student(
      ID: "1",
      Name: "Aqsa",
      email: "aqsa@gmail.com",
      age: 20,
    ),

    Student(
      ID: "2",
      Name: "Ahmed",
      email: "ahmed@gmail.com",
      age: 21,
    ),

    Student(
      ID: "3",
      Name: "aqsayy",
      email: "aqsayyy@gmail.com",
      age: 22,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 71, 73),

      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.school),
            SizedBox(width: 5),
            Text("Student Management System"),
          ],
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Container(
          height: 500,
          width: 400,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),

            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(5, 6),
              ),
            ],
          ),

          child: Column(
            children: [

              SizedBox(height: 50),

              // Total Students
              Text(
                // student jitna hoon yh line us ko show krti ha
                "Total Student : ${students.length}",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                ),
              ),

              SizedBox(height: 50),

             

              ElevatedButton.icon(
                onPressed: () {

                  // Fields ko empty karna
                  nameController.clear();
                  emailController.clear();
                  ageController.clear();

                  showDialog(
                    context: context,
                    builder: (context) {

                      return AlertDialog(

                        title: Text("Add Student"),

                        content: Column(
                          mainAxisSize: MainAxisSize.min,

                          children: [

                            TextField(
                              // add krna ka liya
                              controller: nameController,
                              decoration: InputDecoration(
                                labelText: "Student Name",
                              ),
                            ),

                            SizedBox(height: 20),

                            TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                labelText: "Email",
                              ),
                            ),

                            SizedBox(height: 20),

                            TextField(
                              controller: ageController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: "Age",
                              ),
                            ),
                          ],
                        ),

                        actions: [

                          // Cancel
                          ElevatedButton(
                            onPressed: () {
                              // screen py wapis ly jana 
                              Navigator.pop(context);
                            },

                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 44, 29, 14),
                            ),

                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),

                          // ADD
                          ElevatedButton(
                            onPressed: () {

                              if (nameController.text.isEmpty ||
                                  emailController.text.isEmpty ||
                                  ageController.text.isEmpty) {
                                return;
                              }

                              setState(() {
// naya user add kra ka code
                                students.add(
                                  Student(
                                    ID: (students.length + 1).toString(),
                                    Name: nameController.text,
                                    email: emailController.text,
                                    age: int.tryParse(
                                          ageController.text,
                                        ) ??
                                        0,
                                  ),
                                );

                              });

                              nameController.clear();
                              emailController.clear();
                              ageController.clear();

                              Navigator.pop(context);
                            },

                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 102, 2, 35),
                            ),

                            child: Text(
                              "ADD",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },

                icon: Icon(Icons.person_add),

                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 39, 30, 1),
                ),

                label: Text(
                  "Add Student",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 50),

           

              ElevatedButton.icon(
                onPressed: () {

                  showDialog(
                    context: context,
                    builder: (context) {

                      return AlertDialog(

                        title: Text("All Students"),

                        content: SizedBox(
                          width: double.maxFinite,
                          height: 300,
// al user show data

                          child: ListView.builder(

                            itemCount: students.length,

                            itemBuilder: (context, index) {

                              Student student = students[index];

                              return Card(

                                child: ListTile(

                                  leading: CircleAvatar(
                                    child: Text(student.ID),
                                  ),

                                  title: Text(
                                    student.Name,
                                  ),

                                  subtitle: Text(
                                    "${student.email}\nAge: ${student.age}",
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                        actions: [

                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },

                            child: Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },

                icon: Icon(
                  Icons.visibility,
                  color: Colors.white,
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 39, 30, 1),
                ),

                label: Text(
                  "Read Student",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 50),

             

              ElevatedButton.icon(
                onPressed: () {

                  showDialog(
                    context: context,
                    builder: (context) {

                      return AlertDialog(

                        title: Text("Delete Student"),

                        content: SizedBox(
                          width: double.maxFinite,
                          height: 300,

                          child: ListView.builder(

                            itemCount: students.length,

                            itemBuilder: (context, index) {

                              Student student = students[index];

                              return ListTile(

                                leading: CircleAvatar(
                                  child: Text(student.ID),
                                ),

                                title: Text(
                                  student.Name,
                                ),

                                subtitle: Text(
                                  "${student.email}\nAge: ${student.age}",
                                ),

                                trailing: IconButton(

                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),

                                  onPressed: () {

                                    setState(() {
                                      students.removeAt(index);
                                    });

                                    Navigator.pop(context);
                                  },
                                ),
                              );
                            },
                          ),
                        ),

                        actions: [

                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },

                            child: Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },

                icon: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 39, 30, 1),
                ),

                label: Text(
                  "Delete Student",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

              SizedBox(height: 50),

              // =========================
              // UPDATE STUDENT
              // =========================

              ElevatedButton.icon(
                onPressed: () {

                  showDialog(
                    context: context,
                    builder: (context) {

                      return AlertDialog(

                        title: Text("Update Student"),

                        content: SizedBox(
                          width: double.maxFinite,
                          height: 300,

                          child: ListView.builder(

                            itemCount: students.length,

                            itemBuilder: (context, index) {

                              Student student = students[index];

                              return ListTile(

                                leading: CircleAvatar(
                                  child: Text(student.ID),
                                ),

                                title: Text(
                                  student.Name,
                                ),

                                subtitle: Text(
                                  "${student.email}\nAge: ${student.age}",
                                ),

                                trailing: IconButton(

                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.blue,
                                  ),

                                  onPressed: () {

                                    // Existing data form mein show hogi

                                    TextEditingController
                                        updateNameController =
                                        TextEditingController(
                                      text: student.Name,
                                    );

                                    TextEditingController
                                        updateEmailController =
                                        TextEditingController(
                                      text: student.email,
                                    );

                                    TextEditingController
                                        updateAgeController =
                                        TextEditingController(
                                      text: student.age.toString(),
                                    );

                                    showDialog(
                                      context: context,
                                      builder: (context) {

                                        return AlertDialog(

                                          title: Text(
                                            "Edit Student",
                                          ),

                                          content: Column(
                                            mainAxisSize:
                                                MainAxisSize.min,

                                            children: [

                                              TextField(
                                                controller:
                                                    updateNameController,

                                                decoration:
                                                    InputDecoration(
                                                  labelText:
                                                      "Student Name",
                                                ),
                                              ),

                                              SizedBox(height: 15),

                                              TextField(
                                                controller:
                                                    updateEmailController,

                                                decoration:
                                                    InputDecoration(
                                                  labelText:
                                                      "Email",
                                                ),
                                              ),

                                              SizedBox(height: 15),

                                              TextField(
                                                controller:
                                                    updateAgeController,

                                                keyboardType:
                                                    TextInputType.number,

                                                decoration:
                                                    InputDecoration(
                                                  labelText:
                                                      "Age",
                                                ),
                                              ),
                                            ],
                                          ),

                                          actions: [

                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(
                                                  context,
                                                );
                                              },

                                              child: Text(
                                                "Cancel",
                                              ),
                                            ),

                                            ElevatedButton(
                                              onPressed: () {

                                                setState(() {

                                                  student.Name =
                                                      updateNameController
                                                          .text;

                                                  student.email =
                                                      updateEmailController
                                                          .text;

                                                  student.age =
                                                      int.tryParse(
                                                        updateAgeController
                                                            .text,
                                                      ) ??
                                                      student.age;
                                                });

                                                // Edit dialog close
                                                Navigator.pop(
                                                  context,
                                                );

                                                // Students list dialog close
                                                Navigator.pop(
                                                  context,
                                                );
                                              },

                                              child: Text(
                                                "Update",
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),

                        actions: [

                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },

                            child: Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },

                icon: Icon(
                  Icons.update,
                  color: Colors.white,
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 39, 30, 1),
                ),

                label: Text(
                  "Update Student",
                  style: TextStyle(
                    color: Colors.white,
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


// =================================
// STUDENT CLASS
// =================================

class Student {

  String ID;
  String Name;
  String email;
  int age;

  Student({
    required this.ID,
    required this.Name,
    required this.email,
    required this.age,
  });
}
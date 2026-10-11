
import 'package:flutter/material.dart';

class Todo_screen extends StatefulWidget {
  const Todo_screen({super.key});

  @override
  State<Todo_screen> createState() => _Todo_screenState();
}

class _Todo_screenState extends State<Todo_screen> {
  
TextEditingController taskController = TextEditingController();
TextEditingController searchController  = TextEditingController();
  List<String> tasks = [];
  List<String> searchResults = [];
  void addTask() {
    String task = taskController.text.trim();

    if (task.isNotEmpty) {
      setState(() {
        tasks.add(task);
      });

      taskController.clear();
    }
  }

void delete(int index){
setState(() {
  tasks.removeAt(index);
});
}
void editTask(int index) {
  // jo purna text ha us k text field ma ly ka ata ha 
  taskController.text = tasks[index];

  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Edit Task"),
      // popup ka andar text field show krta ha
      content: TextField(controller: taskController),
      actions: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              // naya likha huwa text purna sa replace
              tasks[index] = taskController.text;
            });
            taskController.clear();
            Navigator.pop(context);
          },
          child: const Text("Update"),
        ),
      ],
    ),
  );
}

void searchTask(){
  String search = searchController.text.toLowerCase();

  setState(() {
    searchResults = tasks
        .where((task) => task.toLowerCase().contains(search))
        .toList();
  });


}















  @override
  Widget build(BuildContext context) {
    searchResults = searchController.text.isEmpty ? tasks : searchResults ;
    return Scaffold(
          
      backgroundColor: const Color.fromARGB(255, 19, 4, 46),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(30),
          width: 300,
          height: 500,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),

          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.task,
                    color: Colors.purple,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Todo List...",
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

TextField(
  controller: searchController,
   decoration: InputDecoration(
suffixIcon : IconButton(onPressed: (){
  searchTask();
}, icon: Icon(Icons.search)),
    hintText: "Search here",
   ),
),
SizedBox(height: 10,),
TextField(
 controller: taskController,
 decoration: InputDecoration(
  hintText: "Enter  task",
  labelText: "Task",
),
),
SizedBox(height: 20,),

ElevatedButton(onPressed: addTask, child: Text("Add task")),
Expanded(child: ListView.builder(
  

  itemCount: searchResults.length,
itemBuilder: (context, index){
return ListTile(
leading: Icon(Icons.add),
 title: Text(tasks[index]),

trailing: Row(
      mainAxisSize: MainAxisSize.min,
  // edit
  children: [
    IconButton(onPressed: (){
      editTask(index);
    }, 
    icon:Icon(Icons.edit),),
  // delete
     IconButton(onPressed: (){
      delete(index);
     },
   icon: Icon(Icons.delete),),
  ],
),


);
}
),
),
            ],
          ),
        ),
      ),
    );
  }
}

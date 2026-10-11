
class TodoController {
  List<String> tasks = [];

  // Add Task
  void addTask(String task) {
    tasks.add(task);
  }

  // Edit Task
  void editTask(String newTask, int index) {
    tasks[index] = newTask;
  }

  // Delete Task
  void deleteTask(int index) {
    tasks.removeAt(index);
  }

  // Search Task
  List<String> searchTask(String query) {
    return tasks.where((task) {
      return task.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
}


 class StudentController {
List<StudentController> students = [
  
];

  void add(StudentController std) {
    students.add(std);
  }
// remove
  void remove(int id) {
    students.removeAt(id);
  }
  // search

  void edit(StudentController std, {required int index}) {
   
  }
 }







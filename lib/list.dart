class Name {
  List<String> names = [
    "Aqsa",
    "Ali",
    "Ayesha",
    "Ahmed",
    "Sara"
  ];

  void addname() {
    names.remove("Ahmed");
    names.insert(0, "zara");
    names[1] = "hina";
  }

  void printname() {
    for (String n in names) {
      if (n[0] == "A") {
        print(n);
      }
    }
  }
}

void main() {
  Name n2 = Name();

  n2.addname();
  print(n2.names[1]);
  n2.printname();
}
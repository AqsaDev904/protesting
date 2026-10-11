class Students {
  Map<String, int> marks = {
    "aqsa": 12,
    "ALi": 122,
    "sarmad": 112,
  };

  Map<String, int> get result {
    return marks.map((name, mark) {
      return MapEntry(name, mark * 2);
    });
  }
}

void main() {
  Students s1 = Students();

  print(s1.marks);
  print(s1.result);
}
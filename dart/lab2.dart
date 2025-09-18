// Iterator & Iterable
class EvenNumbersIterator implements Iterator<int> {
  int _current = 0;
  @override
  int get current => _current;
  @override
  bool moveNext() {
    _current += 2;
    return _current <= 20;
  }
}
class EvenNumbersIterable extends Iterable<int> {
  @override
  Iterator<int> get iterator => EvenNumbersIterator();
}
void main() async {
  //  Task 1 
  var evens = EvenNumbersIterable();
  print("Even Numbers from 1 to 20:");
  for (var num in evens) {
    print(num);
  }

  // Task 2 
  Map<String, int> students = {
    'Habiba': 95,
    'Sara': 92,
    'Reem': 78,
    'Mona': 95
  };
  print("\nStudent Names:");
  students.keys.forEach(print);

  var highestGrade = students.values.reduce((a, b) => a > b ? a : b);
  print("Highest Grade: $highestGrade");

  students.remove('Mona'); 
  print("After removing Mona: $students");

  //  Task 3
  int areaNormal(int w, int h) {
    return w * h;
  }

  // Arrow function
  int areaArrow(int w, int h) => w * h;

  // Anonymous function
  var areaAnonymous = (int w, int h) {
    return w * h;
  };

  // Higher-order function
  int areaHigher(int w, int h, int Function(int, int) calc) {
    return calc(w, h);
  }

  print("\nAreas:");
  print("Normal: ${areaNormal(5, 10)}");
  print("Arrow: ${areaArrow(5, 10)}");
  print("Anonymous: ${areaAnonymous(5, 10)}");
  print("Higher-order: ${areaHigher(5, 10, (a, b) => a * b)}");

  //  Task 4 
  print("\nStream numbers:");
  await for (var num in numberStream()) {
    print(num);
  }
  //  Task 5
  print("\nFuture & async/await:");
  var result = await fetchData();
  print(result);
  // Task 6 
  print("\nNull Safety:");
  String? username;
  print(username ?? "Guest"); 
  username ??= "DefaultUser";
  print("Assigned: $username");
  print("Length of name: ${username?.length}"); 
}
// Stream function
Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

// Future function
Future<String> fetchData() async {
  print("Fetching data...");
  await Future.delayed(Duration(seconds: 3));
  return "Data Loaded";
}

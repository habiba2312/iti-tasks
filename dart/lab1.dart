void main() {
  int num1 = 10;
  int num2 = 5;
  // Arithmetic
  print("Sum = ${num1 + num2}");
  print("Product = ${num1 * num2}");
  print("Difference = ${num1 - num2}");

  // compare
  if (num1 > num2) {
    print("num1 ($num1) is greater than num2 ($num2)");
  } else if (num1 < num2) {
    print("num2 ($num2) is greater than num1 ($num1)");
  } else {
    print("Both numbers are equal");
  }
  // logical
  if (num1 > 0 && num2 > 0) {
    print("Both are positive");
  }

  if (num1 > 0 || num2 > 0) {
    print("At least one is positive");
  }

  if (!(num1 > 0 || num2 > 0)) {
    print("Neither are positive");
  }
  // Null-aware Operators
  String? name = null;
  print(name ?? "Unknown");
  print(name?.length);
  //Assignment 2
  int grade = 85;  
  if (grade >= 90 && grade <= 100) {
    print("A");
  } else if (grade >= 80 && grade <= 89) {
    print("B");
  } else if (grade >= 70 && grade <= 79) {
    print("C");
  } else {
    print("F");
  }
  //even number
  print("Even numbers from 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
  //swtich
  int day = 4;
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid number! Please enter between 1-7.");
  }
  //assignment3
  var list1 = [10, 20, 30, 40];

  // 1) for-in loop
  print("Elements in list1 (for-in loop):");
  for (var num in list1) {
    print(num);
  }
  // 2) forEach
  print("\nElements * 2 (forEach):");
  list1.forEach((num) {
    print(num * 2);
  });
  // 3) spread operator ...
  var list2 = [50, 60];
  var mergedList = [...list1, ...list2];
  print("\nMerged list: $mergedList");
//map
var student = {
    'name': 'Ali',
    'age': 22,
    'grade': 'A',
  };

  // 1) Print values using forEach
  print("\nStudent info:");
  student.forEach((key, value) {
    print("$key : $value");
  });

  // 2) Add new key
  student['city'] = 'Cairo';

  // 3) Update grade
  student['grade'] = 'B';

  print("\nUpdated student info:");
  student.forEach((key, value) {
    print("$key : $value");
  });
  //Assignment 4
  void addNumbers(int a, int b) {
  print("Sum = ${a + b}");
}
//Arrow function
int square(int n) => n * n;
//greet func
void greet({String? name, String? city}) {
  if (name == null) {
    print("Hello Guest");
  } else if (city == null) {
    print("Hello $name");
  } else {
    print("Hello $name from $city");
  }
}
addNumbers(5, 7);
print("Square of 4 = ${square(4)}");
  greet();                        
  greet(name: "Ali");            
  greet(name: "Ali", city: "Cairo");
}

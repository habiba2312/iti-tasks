/*
 Task:
Create an abstract class Shape with a method area().
• Implement two subclasses Circle and Rectangle.
• Calculate and return the area in each class.
• In main(), create objects and print their areas.
*/
import 'dart:math';
abstract class Shape {
  double area(); 
}
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}
class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void main() {
  Circle c1 = Circle(5);
  Rectangle r1 = Rectangle(4, 6);

  print("Circle Area: ${c1.area()}");
  print("Rectangle Area: ${r1.area()}");
}

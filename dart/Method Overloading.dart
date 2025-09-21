/*
Task:
Create a class Calculator with a method add() that works:
• With two parameters → sum of two numbers.
• With three parameters → sum of three numbers.
  (Hint: use optional parameters)
*/
class Calculator{
  int add({int a=1,int b=3,int c=4}){
    return a+b+c;
  }
}
void main(){
  Calculator c=Calculator();
  print("Sum of 2 numbers: ${c.add(a: 5, b: 10)}");       
  print("Sum of 3 numbers: ${c.add(a: 5, b: 10, c: 20)}");
}
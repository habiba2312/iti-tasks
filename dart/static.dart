/*
Task:
Create a class Counter with:
• A static variable count initialized to 0.
• A constructor that increases count every time a new object is created.
• A static method getCount() to print total number of created objects.
Test by creating multiple objects.
*/
class Counter{
  static int count=0;
  Counter(){
    count++;
  }
  static getCount(){
    print("total object:$count");
  }
}
void main(){
  Counter c1 =Counter();
  Counter c2 =Counter();
  Counter.getCount();
}
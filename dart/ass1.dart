/*Explain the difference between Class and Object with a real-life example?

class:It defines attributes or member variables and behaviors (methods or member functions) that objects of that class will possess.
object:An instance of a class created

ex:
class info {
  String name;
  int age;
  info(this.name, this.age);
}
int main(){
var p = info("Habiba", 21);
}
2. What is a Constructor? What types of constructors does Dart support?
   It is used to initialize the object’s properties.
   type:Default Constructor,you pass arguments

3. How does Dart handle Access Modifiers?
   Public: By default, everything is public.
   Private: Use an underscore (_) before a variable/method name to make it private .

4. What is Encapsulation? How to implement it in Dart using Getter and Setter?
   Encapsulation means hiding data and exposing controlled access through methods (getters/setters).
   ex:
   class info{
   int_age = 0;
   int get age => _age;
   set setAge(int p) {
    this._age = p;
  }
   }
5. Why should we use a Setter instead of making a variable public?
   Protects sensitive variables from direct modification.

*/

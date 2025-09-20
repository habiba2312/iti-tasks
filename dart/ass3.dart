class User{
  String _username="";
  set username(String value) {
    if (value.isEmpty) {
      print("Username cannot be empty!");
    } else {
      _username = value;
    }
  }
  String get username => _username;
}
void main() {
  var user = User();
  user.username = "Habiba";
  print("Username: ${user.username}");
  user.username = ""; 
  print("Username: ${user.username}");
}

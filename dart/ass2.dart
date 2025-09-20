class BankAccount {
  double _balance = 0; 
  double get balance => _balance;

  // Setter to add money (only if amount > 0)
  set add(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("add: $amount");
    } else {
      print("Amount must be greater than 0");
    }
  }
}

void main() {
  var account = BankAccount();
  account.add = 1000; 
  account.add = -100; 
  print("Current Balance: ${account.balance}");
}

class Product {
  int _id;
  String _name;
  double _price;
  Product(this._id, this._name, this._price) {
    if (_price <= 0) {
      print("Price must be greater than 0");
    }
  }

  int get id => _id;
  String get name => _name;
  double get price => _price;

  set name(String value) {
    if (value.isEmpty) {
      print("Name cannot be empty");
    } else {
      _name = value;
    }
  }

  set price(double value) {
    if (value <= 0) {
      print("Price must be greater than 0");
    } else {
      _price = value;
    }
  }
}

class Cart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print("${product.name} added to cart.");
  }

  void removeProduct(int id) {
    products.removeWhere((p) => p.id == id);
    print("Product removed from cart.");
  }

  void showCart() {
    if (products.isEmpty) {
      print("Cart is empty.");
      return;
    }

    double total = 0;
    print("Cart contents:");
    for (var p in products) {
      print("ID: ${p.id}, Name: ${p.name}, Price: ${p.price}");
      total += p.price;
    }
    print("Total Price: $total");
  }
}

void main() {
  var p1 = Product(1, "Laptop", 20000);
  var p2 = Product(2, "Phone", 9000);
  var p3 = Product(3, "Headphones", 8000);

  var cart = Cart();

  cart.addProduct(p1);
  cart.addProduct(p2);
  cart.showCart();
  cart.removeProduct(1);
  cart.showCart();
}


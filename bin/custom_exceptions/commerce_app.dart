import 'exception_commerce.dart';

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class Cart {
  List<Product> items = [];

  double getTotal() {
    return items.fold(0, (sum, item) => sum + item.price);
  }

  void addItem(Product product) {
    if (product.price <= 0) {
      throw InvalidPriceException(
        "El precio del producto no puede ser cero o negativo.",
      );
    }
    items.add(product);
  }
}

void main() {
  try {
    Product laptop = Product("Laptop", 1200.99);
    Product mouse = Product("Mouse", 25.99);

    Cart cart = Cart();
    cart.addItem(laptop);
    cart.addItem(mouse);

    print("Total a pagar: \$${cart.getTotal()}");
  } catch (e) {
    if (e is InvalidPriceException) {
      print("Error: ${e.message}");
    } else if (e is ProductNotFoundException) {
      print("Error: ${e.message}");
    } else if (e is NetworkException) {
      print("Error: ${e.message}");
    } else {
      print("Error desconocido: $e");
    }
  }
}

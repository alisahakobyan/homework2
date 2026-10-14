
class Product {
  String name;
  String category;
  double price;

  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> totals = {};

  for (Product product in products) {
    if (totals.containsKey(product.category)) {
      totals[product.category] =
          totals[product.category]! + product.price;
    } else {
      totals[product.category] = product.price;
    }
  }

  return totals;
}

void main() {
  List<Product> products = [
    Product("Phone", "Electronics", 500.0),
    Product("Laptop", "Electronics", 1000.0),
    Product("Book", "Education", 20.0),
  ];

  print(totalByCategory(products));
}

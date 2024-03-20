abstract class IProduct {
  final String name;
  final String category;
  final double price;

  IProduct(this.name, this.category, this.price);

  String description() {
    return ("Seçtiğiniz ürün '$name'dir. Bu ürün $category kategorisindedir. Fiyatı $price Tl dir.");
  }
}

class Product implements IProduct {
  final String name;
  final String category;
  final double price;
  Product(this.name, this.category, this.price);

  @override
  String description() {
    return ("Seçtiğiniz ürün '$name'dir. Bu ürün $category kategorisindedir. Fiyatı $price Tl dir.");
  }
}

class GlobalProduct extends IProduct {
  final String taxNumber;
  GlobalProduct(String name, String category, double price, this.taxNumber)
      : super(name, category, price);

  @override
  String description() {
    final double productPriceAsDollar = price / 33.95;
    
    return ("Seçtiğiniz ürün '$name'dir.Yurt dışından tedarik edilmektedir. Bu ürün $category kategorisindedir. Fiyatı $productPriceAsDollar dolardır. Vergi numarası ise '$taxNumber' dır.");
  }
}

final List<Product> myProducts = [
  Product("iPhone 11 Pro Max", "Telefonlar", 40000),
  Product("MacBook Pro 14 Inc", "Laptop", 60000),
];

final List<GlobalProduct> globalProducts = [
  GlobalProduct("Dyson V15", "Ev Aletleri", 30000, "83458024580"),
  GlobalProduct("Pandora Kolye", "Aksesuar", 15000, "382520485"),
];
void main() {
  for (int i = 0; i < myProducts.length; i++) {
    final product = myProducts[i].description();

    print(product);
  }

  for (int i = 0; i < globalProducts.length; i++) {
    final globalProduct = globalProducts[i].description();

    print(globalProduct);
  }
}

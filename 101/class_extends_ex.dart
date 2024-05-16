class Books {
  final String name;
  final String author;
  final String category;
  final double price;

  Books(this.name, this.author, this.category, this.price);
}

class AbroadBooks extends Books {
  final double tax;

  AbroadBooks(this.tax, super.name, super.author, super.category, super.price);

  void ChangeCurrency() {
    final double totalPriceAsTl = (price * 34.35) + tax;

    print(
        " $name kitabının fiyatı dolar olarak $price dolardır. Tl karşılığı ise vergilerle beraber $totalPriceAsTl Tl dir.");
  }
}

void main(List<String> args) {
  final AbroadBooks cleanCodeBook =
      AbroadBooks(186, "Clean Code", "Robert Martin", "Software", 30);

  cleanCodeBook.ChangeCurrency();
}

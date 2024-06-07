class Restaurant {
  String? customerName;
  int tableNumber;
  TableStatus tableStatus;

  Restaurant(
      {this.customerName,
      required this.tableNumber,
      required this.tableStatus});

  void checkTableForBooking(int tableNumber) {}
}

enum TableStatus {
  empty,
  occupied,
  reserved,
}
// it will contunie...

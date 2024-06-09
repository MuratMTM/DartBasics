enum OrderStatus { received, processing, shipped, delivered, cancelled }

class Order {
  int id;
  String customerName;
  List<String> products;
  OrderStatus status;

  Order(this.id, this.customerName, this.products, this.status);

  void updateStatus(OrderStatus newStatus) {
    status = newStatus;
    print("Sipariş durumu güncellendi: $status");
  }

  void receiveOrder() {
    if (status == OrderStatus.received) {
      updateStatus(OrderStatus.processing);
      print("Sipariş alındı ve işlenmeye başladı");
    }
  }

  void processOrder() {
    if (status == OrderStatus.processing) {
      updateStatus(OrderStatus.shipped);
      print("Sipariş kargolandı");
    }
  }

  void shipOrder() {
    if (status == OrderStatus.shipped) {
      updateStatus(OrderStatus.delivered);
      print("Sipariş teslim edildi");
    }
  }

  void cancelOrder() {
    if (status != OrderStatus.delivered) {
      updateStatus(OrderStatus.cancelled);
      print("Sipariş iptal edildi");
    }
  }

  void showOrderDetails() {
    print("Sipariş Numarası: $id");
    print("Müşteri Adı: $customerName");
    print("Sipariş Edilen Ürünler: $products");
    print("Sipariş Durumu: $status");
  }
}

void main() {
  Order newOrder = Order(13242, "Murat Işık",
      ["Seiko 5", "Puma Run", "Apple Watch"], OrderStatus.received);

  newOrder.showOrderDetails();
  
  
  newOrder.receiveOrder();   
  newOrder.processOrder();   
  newOrder.shipOrder();      
  

  
  newOrder.showOrderDetails();
}

import 'model/model.dart';

void main() {
  Customer customer1 =
      Customer("murat.postmen@gmail.com", "*********", "Murat Işık", true, 25);
  Customer customer2 = Customer(
      "berk.sefir@gmail.com", "***********", "Berk Sefir", false, 15,
      adress: "İstanbul");

  customer1.checkCustomersAge();
  customer2.checkCustomersAge();
  print(customer1.giveCouponToPremiumCustomer());
  print(customer2.giveCouponToPremiumCustomer());

  
}

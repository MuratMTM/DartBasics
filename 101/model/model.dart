class Customer {
  final String email;
  final String password;
  final String name;
  final int age;
  final String? adress;
  final bool isPremium;
  Customer(this.email, this.password, this.name, this.isPremium, this.age,
      {this.adress});

  String giveCouponToPremiumCustomer() {
    if (isPremium) {
      return "$name Congratulations! You have the right to give a coupon";
    } else {
      return "$name Sorry! You don't have the right to give a coupon";
    }
  }

  void checkCustomersAge() {
    if (age >= 18) {
      return;
    } else {
      print("$name You are not eligible to sign up");
    }
  }
}

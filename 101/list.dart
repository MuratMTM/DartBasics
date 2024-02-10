void main() {
// banka müşterilerimizin kredi puanlarını tutan bir listemiz olsun.
//Bu müşterilerden kredi puanı  1200 ün üzerinde olanlar kredi verilsin diğerlerine verilmesin.
//Ardından kredi verilecek olan müşterilerimizin puanlarını tutacak olan yeni bir liste oluşturulsun

  final List<int> customersCreditScore = [1400, 1600, 1800, 1100, 900];
  List<int> specialCustomers = [];
  final String poorCustomersMessage =
      "puanına sahip olan kullanıcılar kredi kullanamaz.";
  final String goodCustomersMessage =
      "puanlarina sahipsiniz. 500 bin TL ye varan kredi çekebilirsiniz.";

  void findSpecialCustomers() {
    for (var allCustomers in customersCreditScore) {
      if (allCustomers > 1200) {
        specialCustomers.add(allCustomers);
      } else {
        print(allCustomers.toString() + poorCustomersMessage);
      }
    }
    print(specialCustomers.toString() + goodCustomersMessage);
  }

  findSpecialCustomers();

// Bankaya yeni gelen müşteriler olabilir ve diğerlerinin sırasına geçmeye çalışabilir o yüzden bütün müşterileri kredi puanınna göre sıraya koy.
// Puanı 900 den aşağı olanlara hakkında dava açılacağını söyle.

  customersCreditScore.insert(2, 600);
  customersCreditScore.insert(3, 1000);
  customersCreditScore.insert(1, 800);
  customersCreditScore.insert(5, 500);

  customersCreditScore.sort();

  int minCreditScore = 900;

  void takeToCourt() {
    for (int blackList in customersCreditScore) {
      if (blackList < minCreditScore) {
        print(
            "$blackList -- Adli işlemler başlatılmıştır. Borcunuzuzu ödemediğinizden dolayı mahkemeye verildiniz.");
      } else {
        print("$blackList Hoşgeldiniz!");
      }
    }
  }

  takeToCourt();
}

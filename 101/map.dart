void main() {
  //2023 yılında en çok satılan  6 tane kitabın adını ve yazarının adını tutan bir tane mapimiz olsun.
  // Bu mapde sevdiğimiz yazarın olup olmadığını merak edip kontrol ediyoruz.
  // Bu mapde sevdğimiz kitabın olup olmadığını merak edip kontrol ediyoruz.
  // bu mapin kaç tane eserden oluştuğunu merak edip kontrol ediyoruz.
  // Mutlaka bulunması gerektiğini düşündüğümüz eserim map içinde olup olmamasına göre vereceğim tepki.
  //Listenin sahip olduğu özelliklere map de sahiptir.

  final Map<String, String> bestsellerBooks = {
    "James Clear": "Atomic Habits",
    "Rebecca Yalos": "Iron Flame",
    "Prince Harry": "Spare",
    "Bonnie Garmus": "Lessons in Chemistry: A Novel",
    "Britney Spears": "The Woman in Me",
    "Robert Greene": "The 48 Laws of Power"
  };

  print(bestsellerBooks.containsKey("Robert Greene"));
  print(bestsellerBooks.containsValue("Atomic Habits"));
  print(bestsellerBooks.length);

  bool found = false;
  for (var books in bestsellerBooks.values) {
    if (books == "The Art of War") {
      print("No surprise");
      found = true;
      break;
    }
  }

  if (!found) {
    print("What a shame");
  }
}

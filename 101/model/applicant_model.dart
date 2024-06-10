class Applicant {
  late final String _tc;
  late final String _phone;
  late final String name;
  late final int age;
  late final String university;
  late final String department;
  late final int? experinceYear;

  Applicant(this._tc, this._phone, this.name, this.age, this.university,
      this.department,
      {this.experinceYear});

  String get tc => _tc;
  String get phone => _phone;

   final firstApplicant = Applicant(
      "56723578639", "5414794332", "Arda Güler", 23, "ODTÜ", "Makine Müh.");

  final secondApplicant = Applicant(
      "12343200734", "5342953478", "Ferdi Kadıoğlu", 25, "İTÜ", "İnşaat Müh.",
      experinceYear: 3);
}



void main() {
  final bert = Student("Bert", "Rooser", 95);
  final ernie = Student("Ernie", "Bostrom", 85);

  final bertFormatted = bert.toString();
  final ernieFormatted = ernie.toString();

  print(bertFormatted);
  print(ernieFormatted);
}

final class Student {
  final String firstName;
  final String lastName;
  final int grade;

  Student(this.firstName, this.lastName, this.grade);

  @override
  String toString() {
    return 'firstName: $firstName,\nlastName: $lastName,\ngrade: $grade\n';
  }
}

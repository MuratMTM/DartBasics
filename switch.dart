void main() {
  int tanDegree = 45;

  const int degree1 = 0;
  const int degree2 = 90;
  const int degree3 = 180;
  const int degree4 = 270;

  const String alert =
      "Lütfen koordinat sistemindeki eksenlerin üzerinde bir nokta seçiniz";

  if (tanDegree >= 360) {
    tanDegree -= 360;
  }

  switch (tanDegree) {
    case degree1:
      print("0");
      break;
    case degree2:
      print("infinitive");
    case degree3:
      print("0");
    case degree4:
      print("miles infinitive");

    default:
      print(alert);
  }
}

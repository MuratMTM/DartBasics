class FootballPlayer {
  String name;
  String position;
  int age;
  String nationality;
  String? club;
  int? champion;

  FootballPlayer(this.name, this.position, this.age, this.nationality,
      {this.club, this.champion});

//Override Methods

  @override
  String toString() {
    return 'name: $name,\nposition: $position,\nage: $age,\nnationality: $nationality,\nclub: $club,\nchampion: $champion';
  }

  String toJson() {
    return '{"name": "$name", "position": "$position", "age": $age, "nationality": "$nationality", "club": "$club", "champion": $champion}';
  }
}

void main() {
  final dzeko = FootballPlayer(
      "Edin Dzeko", "Striker", 38, "Bosnia and Herzegovina",
      club: "Fenerbahçe", champion: 10);

  final bonucci =
      FootballPlayer("Leonardo Bonucci", "Defender", 37, "Italy", champion: 20);

  print(dzeko.champion);
  print(bonucci.club);
  print(bonucci.toString());
  print(dzeko.toString());
  print(bonucci.toJson());
}

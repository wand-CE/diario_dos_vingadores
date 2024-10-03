class AvengerModel {
  final name;
  final image;
  final power;
  final intelligence;
  final strength;
  final speed;
  final combat;

  AvengerModel({
    required this.name,
    required this.image,
    required this.power,
    required this.intelligence,
    required this.strength,
    required this.speed,
    required this.combat,
  });

  factory AvengerModel.fromJson(Map<String, dynamic> json) {
    return AvengerModel(
      name: json["name"],
      image: json["image"],
      power: json["power"],
      intelligence: json["intelligence"],
      strength: json["strength"],
      speed: json["speed"],
      combat: json["combat"],
    );
  }
}

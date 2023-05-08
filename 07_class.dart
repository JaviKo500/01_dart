void main() {
  final wolverine =
      Hero(name: 'Wolverine', power: 'Regeneration', isAlive: false);

  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    // 'isAlive': true,
  };

  final ironMan = Hero.fromJson(rawJson);

  print(wolverine);
  print(ironMan);
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;
  bool isAlive;
  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  Hero({required this.name, this.power = 'don\'t have', this.isAlive = true});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'Not name',
        power = json['power'] ?? 'Not power',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '{name: $name, power: $power, isAlive: ${isAlive ? 'yes' : 'nope'}}';
  }
}

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

abstract class Flying {
  void fly() => print('iam fly');
}

abstract class Walker {
  void walking() => print('iam Walking');
}

abstract class Swimming {
  void swimming() => print('iam swimming');
}

class Dolphin extends Mammal with Swimming {}

class Bat extends Mammal with Flying, Walker {}

class Cat extends Mammal with Walker {}

class Pigeon extends Bird with Walker, Flying {}

class Duck extends Mammal with Walker, Swimming, Flying {}

class Shark extends Fish with Swimming {}

class FishFly extends Fish with Swimming, Flying {}

void main(List<String> args) {
  final flipper = Dolphin();
  flipper.swimming();

  final batman = Bat();
  batman.walking();
  batman.fly();

  final namor = Duck();
  namor.walking();
  namor.fly();
  namor.swimming();
}

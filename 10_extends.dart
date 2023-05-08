void main(List<String> args) {
  final windPlant = WindPlant(initialEnergy: 20);
  print(windPlant);
  print('w ${chargePhone(windPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  void consumeEnergy(double amount);

  EnergyPlant({required this.energyLeft, required this.type});
}

// extends -> hereda
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

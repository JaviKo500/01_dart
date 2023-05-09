void main(List<String> args) {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant( energyLeft: 1000 );
  print(windPlant);
  print('wind ${chargePhone(windPlant)}');
  print('nuclear ${chargePhone(nuclearPlant)}');
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

class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
  
  @override
  set type(PlantType _type) {
    // TODO: implement type
  }
  
}

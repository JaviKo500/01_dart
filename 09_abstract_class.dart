void main(List<String> args) {}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  void consumeEnergy(double amount);

  EnergyPlant({
    required this.energyLeft, 
    required this.type
  });
}

void main() {
  final numbers = [1, 2, 3, 4, 4, 5, 5, 6, 6, 7, 8, 9];

  print('original $numbers');
  print('length ${numbers.length}');
  print('first ${numbers.first}');
  print('last ${numbers.last}');

  print('reverse ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('iterable $reversedNumbers');
  print('List ${reversedNumbers.toList()}');
  print('Set ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((int number) => number > 5);
  print('>5 iterables: ${numbersGreaterThan5} ');
  print('>5 sets: ${numbersGreaterThan5.toSet()} ');
  print('>5 list: ${numbersGreaterThan5.toList()} ');
}

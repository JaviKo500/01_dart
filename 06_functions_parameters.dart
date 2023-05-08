void main() {
  print(greetEveryone());
  print(addTwoNumbers(5, 10));
  print(addTwoNumbersOptional(5));
  print(greetPerson(name: 'Jk500'));
  print(greetPerson(name: 'Jk500', message: 'Hi!'));
}

String greetEveryone() => 'Hello everyone';

int addTwoNumbers(int a, int b) => a + b;

//  * b ??= 0
int addTwoNumbersOptional(int a, [int b = 0]) => a + b;

String greetPerson({required String name, String message = 'Hello'}) =>'$message, $name ';

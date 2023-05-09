void main(List<String> args) {
  emitNumbers().listen((event) {
    print(event);
  });
}

Stream<int> emitNumbers() async* {
  final valuesToEmail = [1, 2, 3, 5, 5];

  for (int i in valuesToEmail) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

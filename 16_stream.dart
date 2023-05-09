void main(List<String> args) {
  emitNumbers()?.listen((event) {
    print(event);
  });
}

Stream<int>? emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    print(value);
    return value;
  });
}

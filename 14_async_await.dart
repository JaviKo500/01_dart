void main(List<String> args) async {
  print('start main');
  try {
    final resp = await httpGet('rest');
    print(resp);
  } catch (err) {
    print('Error: $err');
  }
  print('end main');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));
  throw 'error server';
  // return 'response request http';
}

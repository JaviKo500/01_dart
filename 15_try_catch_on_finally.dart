void main(List<String> args) async {
  print('start main');
  try {
    final resp = await httpGet('rest');
    print(resp);
  } on Exception {
    print('En proces');
  } catch (err) {
    print('Error: $err');
  } finally {
    print('end');
  }
  print('end main');
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));
  throw Exception('Not apara,etres');
  // throw 'error server';
  // return 'response request http';
}

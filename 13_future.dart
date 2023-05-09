void main(List<String> args) {
  print('start main');
  httpGet('rest').then((value) {
    print('resp: $value');
  })
  .catchError((error) {
    print('Error: $error');
  });
  print('end main');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 2), () {
    throw 'error request';
    // return 'response request http';
  });
}

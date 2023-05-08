void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{
      1: 'ditto/font.png',
      2: 'ditto/back.png',
    }
  };

  final pokemos = {
    1: 'ABC',
    2: 'XYZ',
    3: 'AGh',
  };

  print(pokemon);
  print(' Name: ${pokemon['name']} ');
  print(' Name: ${pokemon['sprites']} ');
  print(' Front: ${pokemon['sprites'][1]} ');
  print(' Back: ${pokemon['sprites'][2]} ');
}

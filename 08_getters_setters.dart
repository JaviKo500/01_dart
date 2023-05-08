void main(List<String> args) {
  final mySquare = Square(side: 10);
  mySquare.side = -20;
  print(mySquare.calculateArea());
  print(mySquare.area);
}

class Square {
  double _side;

  Square({required double side}) : _side = side;

  double get area => _side * _side;
  double get side => _side;
  set side(double value) {
    print('setting new value');
    if (value < 0) {
      throw 'Value must be -0';
    }
    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}

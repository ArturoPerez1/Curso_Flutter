/*
*/

void main() {
  final Square mySquare = Square(side: 5);

  mySquare.side = 5;

  print(mySquare.area);
}

class Square {
  double _side;

  Square({required double side}) : _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('Setting new value $value');
    if (value < 0) throw 'Value tiene que ser > 0';

    _side = value;
  }
}

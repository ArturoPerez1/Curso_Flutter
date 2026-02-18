/*
  * Las aserciones te permiten hacer validaciones en tiempo de 
  * desarrollo por lo que hay que activarlas.

  * El constructor factory te permite hacer validaciones porque 
  * el se comporta como un mundo vacío sin acceso al this en el 
  * que estás en una especie de subinstancia donde puedes o no
  * retornar el objeto principal dependiendo de las restricciones
*/

void main() {
  final Square mySquare = Square(value: 5);

  print('Area: ${mySquare.area}');
}

/*
 * Constructor con aserciones
*/
class Square1 {
  double _side;

  Square1({required double side})
    : assert(side >= 0, 'El lado debe ser positivo'),
      _side = side;

  double squareArea() {
    return _side * _side;
  }
}

/*
 * Constructor factory
*/
class Square {
  final double _side;

  Square._internal({required double side}) : _side = side;

  factory Square({required double value}) {
    if (value < 0) throw 'El valor es < 0';

    return Square._internal(side: value);
  }

  double get area => _side * _side;
}

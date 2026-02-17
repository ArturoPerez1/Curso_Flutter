/*
  *Overrides:  los overrides no son más que la forma de indicar en 
  * nuestro código que le estamos cambiando el comportamiento nativo a
  * una propiedad nativa del lenguaje para usarlo a nuestra conveniencia.

  * No es obligatorio colocarlo pero es una muy buena práctica el 
  * utilizarlo
 */

void main() {
  final Person arturo = Person(name: 'Arturo', lastName: 'Pérez', age: 23);

  print('name: ${arturo.toString()}');
  print('name: ${arturo.lastName}');
  print('name: ${arturo.age}');
}

class Person {
  String name;
  String lastName;
  int age;

  Person({required this.name, required this.lastName, required this.age});

  @override
  String toString() {
    return 'Hola mundo';
  }
}

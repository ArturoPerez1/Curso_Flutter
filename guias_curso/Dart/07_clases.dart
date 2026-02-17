/*
  * Para crear el constructor de una clase hay varias formas, las 
  * más comunes son las siguientes:

  * Usando el azúcar sintáctico o sea que directamente asignemos el 
  * valor a los parámetros ya que no queremos hacerles ninguna modificación
  * antes de asignar

  * Usando la lista de inicialización que te permite poder modificar 
  * antes de inicializar
 */

void main() {
  final Hero worverine = Hero(pName: 'Logan', pPower: 'Regeneración');
  final Person arturo = Person(name: 'Arturo', lastName: 'Pérez', age: 23);

  print('Nombre y poderes del héroe');
  print('name: ${worverine.name}');
  print('name: ${worverine.power}');

  print('\nNombre y edad del rescatado');
  print('name: ${arturo.name}');
  print('name: ${arturo.lastName}');
  print('name: ${arturo.age}');
}

// Constructor Azucar sintáctica
class Person {
  String name;
  String lastName;
  int age;

  Person({required this.name, required this.lastName, required this.age});
}

// Constructor Lista de inicialización
class Hero {
  String name;
  String power;

  Hero({required String pName, required String pPower})
    : name = pName.toUpperCase(),
      power = pPower.toUpperCase();
}

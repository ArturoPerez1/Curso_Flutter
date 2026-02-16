/*

* Dart es un lenguaje de programación fuertemente tipado, pero 
* también tiene la característica de poder inferir los tipos de datos
* sin no se declara la variable directamente con el tipo de dato, esta
* práctica no es tan recomendada ya que limita a la hora de leer el código.

! Importante: una vez declaras una variable de un tipo no puedes cambiar dicho tipo después,
! por lo que el código es muy parecido en base a java o typeScript



*/

void main (){
  var helloWorld = 'Hola mundo';
  String myName = 'Arturo';

  print('Hola $myName');
  print('$helloWorld');
  print('${myName.toUpperCase()}');
  print('${1 + 1}');
}
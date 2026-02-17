/*
  * Parámetros por nombre: son una forma especial de llamar a los 
  * parámetros para que a la hora de la llamada a la función nosotros 
  * tengamos el poder de poder decidir el orden de los argumentos

  * La forma de declarar dichos parámetros es dentro de {} y la 
  * característica clave de dichos parámetros es lo que se dijo 
  * anteriormente pero también que estos parámetros son opcionales
  * también

  * Además de eso a este tipo de parámetro al momento de declararlos,
  * también podemos obligar a que siempre sea necesitado ese valor 
  * o sea que se requiere de ese dato ajuro

  * Y usar este tipo de parámetros es de las mejores prácticas que hay en
  * dart, pero claramente hay saber donde y cuando usarlos.
*/

void main() {
  print(greetPerson(name: 'Hola', message: 'Rayos'));
}

String greetPerson({required String name, String message = ''}) {
  return 'Hola, fernando';
}

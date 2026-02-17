/*
  * Parámetros opcionales: son aquellos que si no le pasamos al momento
  * de llamar la función algún valor, entonces simplemente no son requeridos
  * o sea es como decir "Estás ahí pero no necesariamente te necesito para
  * funcionar".

  * Estos parámetros se declaran en la firma de la función entre [] y a 
  * estos parámetros opcionales si queremos evitarnos algún problema con 
  * con que pueda llegar a ser un valor nul, simplemente le asignamos un 
  * valor por defecto.
 */

void main() {
  print(greetEveryone());
  print(byeEveryone());
}

String greetEveryone() {
  return 'Hola todos';
}

String byeEveryone([
  String b = 'Me voy porque si',
  String x = 'Rayos y sentellas',
]) => b.length > x.length ? b : x;

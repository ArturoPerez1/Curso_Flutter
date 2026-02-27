/*
 * Si los Futures son una solicitud única 
 * (como pedir un café y recibirlo), los Streams 
 * son como una cinta transportadora o un grifo
 * abierto: una secuencia de eventos asíncronos que 
 * llegan a lo largo del tiempo.

 * En lugar de devolver un solo valor, 
 * un Stream puede devolver cero, uno o muchos valores, y 
 * finalmente cerrarse o lanzar un error.
 * 
 * importante para poder ejecutar el stream se necesita un escuchador 
 * porque en caso contrario no pasará nada.
*/

void main() {
  emiteNumbers().listen((value) {
    print('emit $value');
  });
}

Stream<int> emiteNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(10);
}

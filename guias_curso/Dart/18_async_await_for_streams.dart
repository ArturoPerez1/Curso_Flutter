/*
  * existe una versión de async
  * await que returna un streams en vez de un future y esa es la 
  * async*

  * Básicamente esta es la forma de manejar streams controlados
*/

void main() {
  emitNumber().listen((int value) {
    print('Stream value: $value');
  });
}

Stream<int> emitNumber() async* {
  final List<int> valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

/*
   * Future es un objeto que representa una operación asíncrona que 
   * se completará en el futuro. Básicamente, es una "promesa" de 
   * que recibirás un valor (o un error) más adelante.

   * Imagina que pides un café: no te lo dan al instante, 
   * sino que recibes un ticket (el Future). Mientras preparan el café, 
   * puedes hacer otras cosas. Cuando el café está listo, el ticket se 
   * "completa" con el resultado.
*/
void main() {
  print('Inicio del programa');

  httpGet('http/arturo').then((value) {
    print(value);
  });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    return 'Respuesta de la petición http';
  });
}

/*
  * A diferencia de los futures puros, cuando usamos async 
  * await se crea un mini cambio en como funciona el programa,
  * al usar await hace que el programa aunque sea asíncrono se comporte
  * como uno asícrono refiriéndonos a que se comporta de manera secuencial
  * o sea primero se ejecuta lo asícrono y luego sigue, no es como los 
  * future que primero termina lo que no es asícrono y luego es que se 
  * cumple lo que falta
*/

void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('http/arturo');
    print(value);
  } catch (err) {
    print('Tenemos un error');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Tenemos un valor de la petition';
}

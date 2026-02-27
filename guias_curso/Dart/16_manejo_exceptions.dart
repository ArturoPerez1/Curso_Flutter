/*

  * try: Es donde colocas el código que podría fallar. 
  * Dart intentará ejecutar estas líneas normalmente.
  ! Ejemplo: Intentar convertir un texto a número 
  ! o hacer una petición a internet.

  * catch: Se usa para obtener el objeto del error y el 
  * stack trace (el rastro de dónde ocurrió). 
  * A diferencia de on, este atrapa cualquier error 
  * que no haya sido filtrado previamente.
  ! Uso: catch (e, s) donde e es el error y s la traza.

  * on: Se usa cuando quieres capturar un tipo de error 
  * específico. Es muy útil si sabes exactamente qué podría 
  * fallar y quieres darle un manejo especial.
  ! Uso: on ExceptionName.

  * finally: Este bloque se ejecuta siempre, sin importar si hubo 
  * un error o no. Se utiliza para tareas de limpieza.
  ! Ejemplo: Cerrar un archivo o desconectarse de una base de datos.

*/

void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('http/arturo');
    print(value);
  } on Exception {
    print('Tenemos una exception');
  } catch (err) {
    print('opps algo terrible paso');
  } finally {
    print('Fin try catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parametros en el URL');
}

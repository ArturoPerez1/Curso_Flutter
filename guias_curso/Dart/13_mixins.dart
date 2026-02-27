/*
    *Mixin: los mixin no son más que una forma que tenemos en dart 
    * de agregarle características a un objeto sin necesariamente 
    * complejizar a un más la jerarquía.

    * Ejemplo digamos que tenemos un objeto que hereda de animal
    * que hereda del tipo volador, pues con los mixin podemos agregar 
    * los comportamientos propios de esa ese tipo volador, porque 
    * puede ser que no todos los voladores lo hagan de la misma manera
    * Ejemplo digamos que tenemos un avión que es del tipo volador
    * claramente no es un animal pero si vuela entonces con los mixin
    * agregamos ese comportamiento único
*/

void main() {
  final Delfin myDelfin = Delfin();
  myDelfin.nadar();
}

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volador() => print('Estoy volando');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

class Delfin extends Mamifero with Nadador {}

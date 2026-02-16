/*
 * Introducción: En dart como cualquier otro lenguaje de programación fuertemente
 * tipado, tenemos diferentes tipos y además palabras reservadas para
 * declarar variables.

 * Variables:
 
 * - Variables final: es una palabra reservada permite declarar variables de una
 * sola asignación, la diferencia contra una constante es que final 
 * permite inicializar una variable sin conocer el valor que tendrá
 * ya que este se inicializará en tiempo de ejecución y no de 
 * construcción como es el caso de las constantes.
 
* - Varibles nulas:

! En dart por defecto las variable nunca pueden tener valor nulo,
! esto es debido a que dart siempre garantiza que las variables
! nunca tengan ese valor y así evitar el Null Pointer Exception, pero
! si en nuestro desarrollo de alguna aplicación por algún caso necesitamos
! que una variable pueda tener como valor un null tenemos que declarar la
! variable de la siguiente forma.

  
*   - Declaración: luego de colocar el tipo de dato agregamos un signo 
*     un signo de interrogación.
*   
*   - Ejemplo:
*      String? myName;

! Cuando trabajas con variables nulas, dart directamente pasa a modo
! protección por lo que para poder trabajar con dichas variables 
! existen ciertos operadores que te permitirán trabajar con dichas
! variables.

* - Ejemplo 1:
*    String? myName;
*    print('${myName?.length}');
    
    ! Al colocar el ? decimos que solo se ejecute la función si la 
    ! variable no está vacía, y a este operador se le llama operador
    ! de acceso condicional..

* - Ejemplo 2:
*    String? myName;
*    String invitado = nombre ?? "Anonimo";
*    
    
    ! Al colocar ?? en la asignación de valor de la variable, le estamos
    ! indicando a dart que si el valor que le estamos asignando a la 
    ! variable del lado izquierdo del ?? es vacío, por defecto le asigne 
    ! el valor que está a la derecha del ??. A este operador se le llama
    ! operador Null-coalescing

* - Ejemplo 3:
*    String? myName;
*    print('${myName!.length}');
*    
    
    ! Al colocar ! decimos a dart que ignore cualquiera de sus 
    ! restricciones con respecto a los valores nulos, ya que 
    ! nosotros estamos completamente seguros de que dicha variable
    ! nunca está vacía.

* Variables dinámicas:

  ! Hay que tratar de evitar lo más que se puedan las variables del tipo
  ! dinámico, pero existen casos muy específico donde es necesario 
  ! utilizarlos para poder facilitar el trabajo y el manejo de ciertos
  ! datos. Un dato importante de las variables dinámicas es que por 
  ! defecto puede almacenar valores nulos.

  ! En concreto usamos el tipo de dato dinámico cuando necesitamos 
  ! que una variable sea capaz de aceptar cualquier tipo de valor
  ! por lo que cual es la característica principal del tipo de dato
  ! pues que dart no infiere el tipo por el valor que le asignamos 
  ! a la variables sino que siempre dicha variable será del tipo
  ! dinámico

*/

void main() {
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;

  /* Formas de declara listas */
  final List<String> abilities = ['Impactrueno'];
  final sprites = <String>['Pikachu/front.png', 'Pikachu/back.png'];

  /*Variables Nullables */
  String? myName = 'Arturo';
  String? myLastName;

  /*Variables dinámicas */
  dynamic errorMessage = "Error";
  errorMessage = 2;
  errorMessage = [1, 2, 3];

  /*Impresión de las variables */
  print("""
  $pokemon
  $hp
  $isAlive
  $myName
  ${abilities[0]}
  ${sprites.length}
  $errorMessage
  """);

  print(""" 
    ${myLastName ?? 3}
  """);
}

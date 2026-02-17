/*
  List, iterable y sets

  * Listas -> []

  * Iterables -> (): un iterable es una forma de lista que tiene por 
  * propiedad que los datos solo viven cuando son llamados eso 
  * quiere decir que no tienen un peso real en la memoria hasta 
  * que se quiere acceder a ellos. Una característica clave de 
  * los iterables que es lo puedes recorrerlo de manera secuencial,
  * o sea no puedes pararte directamente en el final, en el medio o 
  * donde quieras por medio de un índice como lo harías con las listas
  * y justamente esa es la diferencia clave contra las listas.

  * Conclusión: los iterables son una forma de hacer una promesa a dart
  * de que en algún momento del código necesitarás acceder a esos datos
  * pero justamente por eso de que es una promesa no se almacena nada en 
  * memoria hasta que empiezas a manejar. Eso quiere decir que si tienes
  * un conjunto de un millón de datos y solo necesitas el primero, al 
  * momento de llamar al iterable el solo va a cargar ese primer dato y 
  * el resto del millón no estará en memoria.

  * Entonces solo usamos iterables cuando necesitamos manejar una gran 
  * cantidad de datos pero no nos interesa acceder de manera instantánea
  * a un punto específico de esa cantidad grande datos, cuando 
  * necesitemos acceder a datos específicos usaremos listas ya que son
  * las que tienen ese super poder. Importante si quieres que un iterable
  * se vuelva una lista solamente tienes que parsear el tipo a lista



  * Sets -> {}: Los sets también son una colección de datos solo que tienen la 
  * particularidad de que no van a almacenar valores repetidos, es muy 
  * parecido a los UIDs de las bases de datos que nunca se repiten,
  * solo que no necesariamente los datos tendrán una secuencia, claro a 
  * menos que así hayas creado el set o los datos que estás almacenando
  * están así.

 */

void main() {
  //Listas
  final List<int> numbers = [1, 2, 3, 4, 5, 5, 6, 8, 8, 9];

  //Iterable
  final Iterable<int> iter = numbers.map((int e) => (e * 2));

  //Sets
  final Set<int> set = iter.toSet();

  print('Lista: $numbers');
  for (int i in iter) {
    print('iterable: $i');
  }
  print('Set: $set');
}

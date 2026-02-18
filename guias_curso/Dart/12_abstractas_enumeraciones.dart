/*
*¿Qué es una Clase Abstracta?
*Es una clase que sirve como un molde o plano incompleto. 
*Su objetivo principal es definir una estructura y comportamiento 
*común para otras clases, pero no permite 
*crear instancias directamente (no puedes hacer final myAnimal = Animal();). 
*Puede contener tanto métodos con lógica ya 
*escrita como "métodos abstractos" (sin cuerpo), 
*que obligan a las clases hijas a definirlos.

*¿Qué es extends?
*Se utiliza para la herencia de clase. 
*Al extender una clase, la subclase hereda toda la lógica, 
*las variables y el comportamiento del padre. 
*Es una relación de especialización ("es un"), donde la hija aprovecha 
*lo que el padre ya sabe hacer. Dart solo permite
*extender de una sola clase (herencia simple).

*¿Qué es implements?
*Se utiliza para actuar bajo un contrato o interfaz. 
*En Dart, todas las clases actúan implícitamente como interfaces. 
*Cuando implementas una clase, ignoras su lógica interna y 
*solo tomas sus "firmas" (nombres de métodos y variables). 
*Estás obligado a reescribir todo el contenido desde cero. 
*A diferencia de extends, puedes implementar múltiples clases a la vez.

*¿Cuándo usar cada uno?

*Usa extends cuando:
* - Existe una relación clara de jerarquía (ej. un Perro es un Animal).

* - Quieres reutilizar el código y la lógica que ya escribiste en la clase padre para no repetirla.

* - Necesitas compartir variables de estado y constructores.

*Usa implements cuando:

* - Quieres que una clase tenga una "capacidad" o cumpla un estándar, 
*   sin importar su origen (ej. una clase Avion y una clase Pajaro 
*   pueden implementar Volador).

* - Necesitas polimorfismo múltiple 
*  (una clase que se comporte como varias cosas a la vez).

* - Quieres desacoplar totalmente la definición de la 
*   implementación (muy común en tests o mocks).

*La regla general (Lo que sospechabas)
*extends → Clases Concretas o Abstractas: Lo usas cuando quieres heredar 
*el "ADN" de algo. Si tienes una clase Vehiculo con lógica de motor, 
*quieres que Carro la extienda para no reescribir esa lógica.

*implements → Clases Abstractas (Interfaces): Lo más normal es implementar 
*clases abstractas que actúan puramente como un contrato. Es como decir: 
*"No me importa cómo lo hagas, pero tienes que tener estos métodos".

*/

void main() {
  final windPlant = WindPlant(initialEnergy: 500);

  print(windPlant);
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// Extendiendo de la clase padre

class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// implementado de la clase padre
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

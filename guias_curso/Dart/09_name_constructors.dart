/*
  * constructores por nombre: los contructores por nombre en dart
  * no son más que la forma de definir varios contructores para una 
  * misma clase para poder definir distintos comportamiento según que 
  * constructor se elija para generar una instancia de la clase
 */

void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'clark ken',
    'power': 'Body',
    'isAlive': true,
  };

  final Hero iroman = Hero(name: 'Tony Stark', power: 'Armour', isAlive: true);
  final Hero manStill = Hero.fromJson(rawJson);

  print(""" 
    ${iroman.name}
    ${iroman.power}
    ${iroman.isAlive}
  """);

  print(""" 
    ${manStill.name}
    ${manStill.power}
    ${manStill.isAlive}
  """);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No islives found';
}

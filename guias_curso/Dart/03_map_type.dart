/*
* Variables maps: ya las conoces
*/

void main() {
  /*Variables maps */
  final Map<String, dynamic> pokemonStats = {
    'name': 'Pikachu',
    'hp': 100,
    'isAlive': true,
    'sprites': {'front': 'Pikachu/front.png', 'back': 'Pikachu/back.png'},
  };

  final pokemonStats1 = {'name': 'Pikachu', 'hp': 100, 'isAlive': true};

  print(""" 
  ${pokemonStats1}
  ${pokemonStats['name']}
  ${pokemonStats['sprites']['front']}
  ${pokemonStats['sprites']['back']}
  """);
}

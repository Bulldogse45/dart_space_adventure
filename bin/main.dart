import 'package:dart_space_adventure/dart_space_adventure.dart';

const system = "Solar System";
const planetData = {
  "Mercury": "This is a hot planet, closest to the sun",
  "Venus": "This is a hot planet with runaway greenhouse gases, second closest to the sun",
  "Earth": "This is a hot planet with runaway greenhouse gases, third closest to the sun",  
  "Mars": "This is a hot planet with runaway greenhouse gases, fourth closest to the sun", 
  "Jupiter": "This is a hot planet with runaway greenhouse gases, fifth closest to the sun",  
  "Saturn": "This is a hot planet with runaway greenhouse gases, sixth closest to the sun",  
  "Uranus": "This is a hot planet with runaway greenhouse gases, seventh closest to the sun",  
  "Neptune": "This is a hot planet with runaway greenhouse gases, eigth closest to the sun"
};


void main(List<String> arguments) {
  SpaceAdventure(
    planetarySystem: PlanetarySystem(
      name: system, 
      planets: mockPlanets()
    )).start();
}

List<Planet> mockPlanets() {
   return planetData.entries.map( (e) => Planet(name: e.key, description: e.value )).toList();
}
import 'dart:convert';
import 'dart:io';
import 'package:dart_space_adventure/dart_space_adventure.dart';

// const system = "Solar System";
// const planetData = {
//   "Mercury": "This is a hot planet, closest to the sun",
//   "Venus": "This is a hot planet with runaway greenhouse gases, second closest to the sun",
//   "Earth": "This is a hot planet with runaway greenhouse gases, third closest to the sun",  
//   "Mars": "This is a hot planet with runaway greenhouse gases, fourth closest to the sun", 
//   "Jupiter": "This is a hot planet with runaway greenhouse gases, fifth closest to the sun",  
//   "Saturn": "This is a hot planet with runaway greenhouse gases, sixth closest to the sun",  
//   "Uranus": "This is a hot planet with runaway greenhouse gases, seventh closest to the sun",  
//   "Neptune": "This is a hot planet with runaway greenhouse gases, eigth closest to the sun"
// };


void main(List<String> arguments) {
  var fileData = File(arguments[0]);
  PlanetarySystem planetarySystem;
  fileData.readAsString().then((String systemDataAsString) {
    SpaceAdventure(planetarySystem: createSystem(systemDataAsString)).start();
  }); 
}

PlanetarySystem createSystem(String systemStringData) {
  final systemData = jsonDecode(systemStringData);
  List<Planet> planets = [];
  systemData['planets'].forEach( (thing){
    planets.add(Planet(name: thing['name'], description: thing['description']));
  });
  return PlanetarySystem(
    name: systemData['name'],
    planets: planets
  );
}

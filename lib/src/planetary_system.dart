import 'dart:math';
import 'planet.dart';

class PlanetarySystem {
  final String name;
  final List<Planet> planets;
  final Random _random = Random();

  PlanetarySystem({this.name = "Unnamed System", this.planets = const[] });
  int get numberOfPlanets => this.planets.length;
  bool get hasPlanets => this.planets.isNotEmpty;

  Planet planetWithName(String planetName) {
    return planets.firstWhere( 
      (planet) => planet.name == planetName, 
      orElse: () => Planet.nullPlanet()
    );
  }

  Planet randomPlanet() {
    if (!hasPlanets) return Planet.nullPlanet();
    return planets[_random.nextInt(numberOfPlanets)];
  }
}

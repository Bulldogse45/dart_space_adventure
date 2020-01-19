import 'dart:io';
import 'planetary_system.dart';
import 'planet.dart';

class SpaceAdventure {
  final PlanetarySystem planetarySystem;

  SpaceAdventure({this.planetarySystem});

  void start() {
    printGreeing();
    printIntroduction(getSomething('What is your name?'));
    if (planetarySystem.hasPlanets) {
      travel(
        promptForRandomOrSpecific(
          'Shall I randomly choose a planet for you?'
        )
      );
    } else {
      print("Oh no, your system has no planets to explore :( ");
    }
  }

  void printGreeing() {
    print('Welcome to $planetarySystem!');
    print('There are ${planetarySystem.numberOfPlanets}  planets to explore!');
  }

  String getSomething(String request) {
    print(request);
    return stdin.readLineSync();
  }

  void printIntroduction(String name) {
    print('Nice to meet you, $name.  Let\'s go on an adventure!');
  }

  bool promptForRandomOrSpecific(String prompt) {
    String randomPlanet;
    while (randomPlanet != "Y" && randomPlanet != "N") {
      randomPlanet = getSomething(prompt);
      if (randomPlanet == "Y"){
        return true;
      } else if (randomPlanet == "N"){
        return false;
      } else {
        print("Sorry, I didn't get that");
      }
    }
  }

  void travel(bool randomPlanet) {
    Planet planet;
    if (randomPlanet){
      planet = planetarySystem.randomPlanet();
    } else {
      planet = planetarySystem.planetWithName((getSomething('Name the planet you would like to visit.')));
    } 
    visitPlanet(planet);
  }

  void visitPlanet(Planet planet) {
    print('Traveling to ${planet.name}');
    print('Arriving at ${planet.name}.  ${planet.description}');
  }
}


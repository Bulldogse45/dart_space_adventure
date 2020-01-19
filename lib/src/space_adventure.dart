import 'dart:io';
import 'planetary_system.dart';

class SpaceAdventure {
  PlanetarySystem planetarySystem;

  SpaceAdventure({this.planetarySystem});

  void start() {
    printGreeing();
    printIntroduction(getSomething('What is your name?'));
    travel(
      promptForRandomOrSpecific(
        'Shall I randomly choose a planet for you?'
      )
    );
  }

  void printGreeing() {
    print('Welcome to $planetarySystem!');
    print('There are 8 planets to explore!');
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
    if (randomPlanet){
      travelToRandomPlanet();
    } else {
      visitPlanet(getSomething('Name the planet you would like to visit.'));
    } 
  }

  void visitPlanet(String planet) {
    print('Traveling to $planet');
    print('Arriving at $planet.  A very cold planet furthest from the sun');
  }

  void travelToRandomPlanet() {
    visitPlanet("Mercury");
  }
}


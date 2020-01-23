import 'dart:convert';
import 'dart:io';
import 'package:dart_space_adventure/dart_space_adventure.dart';

void main(List<String> arguments) {
  var fileData = File(arguments[0]);
  fileData.readAsString().then((String systemDataAsString) {
    SpaceAdventure(planetarySystem: PlanetarySystem.fromJson(jsonDecode(systemDataAsString))).start();
  }); 
}


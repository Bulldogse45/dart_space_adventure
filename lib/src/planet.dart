class Planet {
  final String name;
  final String description;

  Planet({this.name, this.description});
  Planet.nullPlanet() : this.name = "Emptiness", this.description = "There is nothing here to see";
}
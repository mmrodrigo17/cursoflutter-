void main() {
  final wolverine = new Heroe();
  wolverine.nombre = 'Logan';
  wolverine.poder = 'Regeneracion';
  print(wolverine);

  final wolverine2 = new Heroe2('Logan', 'Regeneracion');
  print(wolverine2);

  final wolverine3 = new Heroe3(nombre: 'Logan', poder: 'Regeneracion');
  print(wolverine3);
}

class Heroe {
  String? nombre;
  String? poder;

  @override
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}

class Heroe2 {
  String nombre;
  String poder;

  Heroe2(this.nombre, this.poder); //esto seria el constructor de la clase

  @override
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}

class Heroe3 {
  String nombre;
  String poder;

  Heroe3(
      {required this.nombre,
      required this.poder}); //esto seria el constructor de la clase

  @override
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}
//<> [] {}

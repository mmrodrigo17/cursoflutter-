void main() {
//final superman = Personaje ('Clack Kent');
  final superman = new Heroe('Clack Kent');
  print(superman);

  final luthor = new Villano('Lex Luthor');
  print(luthor.maldad);
}

abstract class Personaje {
  String? poder;
  String? nombre;

  Personaje(this.nombre);
  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  int valentia = 100;
  Heroe(String nombre) : super(nombre);
}
//<> [] {}

class Villano extends Personaje {
  int maldad = 100;
  Villano(String nombre) : super(nombre);
}

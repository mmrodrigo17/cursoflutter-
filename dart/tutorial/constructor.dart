void main() {
  final rawJson = {'nombre': 'Tony Stak', 'poder': 'Dinero'};

  final ironman = Heroe3.fromJson(rawJson);
  print(ironman);
//  final wolverine3 = new Heroe3(nombre: 'Logan', poder: 'Regeneracion');
//  print(wolverine3);
}

class Heroe3 {
  String nombre;
  String poder;

  Heroe3(
      {required this.nombre,
      required this.poder}); //esto seria el constructor de la clase

  Heroe3.fromJson(Map<String, String> json)
      : this.nombre = json[
            'nombre']!, //cuidado con el uso de ! eso le dice al compilador que estoy seguro que va a ir el parametro
        this.poder = json['poder'] ??
            'No tien Poder'; // es preferible controlar  el mensaje y poner ?? en vez de !

  @override
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}
//<> [] {}
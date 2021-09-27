import 'dart:math'
    as matem; //uso un alias matem para poder usarla con un objeto y ver el contenido

void main() {
  final cuadrado = new Cuadrado(2);

  cuadrado.area = 17;

  print('area: ${cuadrado.calculaArea()}');
  print('lado: ${cuadrado.lado}');
  print('area: get ${cuadrado.area}');
}

class Cuadrado {
  double lado = 0;

  double get area {
    return this.lado * this.lado;
  }

  set area(double valor) {
    this.lado = matem.sqrt(valor);
  }

  Cuadrado(double lado) : this.lado = lado;

  calculaArea() {
    return this.lado * this.lado;
  }
}
//<> [] {}

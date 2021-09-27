void main() {
  List numeros = [];
  print(numeros);

  List? numeros2 = null; //revisar definicion
  List numeros3 = [1, 2, 3, 4, 5, 6, 7];
  print(numeros2);
  numeros3.add(8);
  print(numeros3[0]);
  numeros3.add('rodrigo');
  print(numeros3);

  List<int> numeros4 = [1, 2, 3, 4, 5, 6, 7];
  print(numeros4);

  final masNumeros = List.generate(100, (int index) => index);
  print(masNumeros);

  Map persona = {
    'nombre': 'rodrigo',
    'edad': 42,
    'soltero': true,
    true: false,
    1: 100,
    2: 2000
  };
  print(persona);
  print(persona['edad']);
  print(persona[true]);
  print(persona[2]);

  persona.addAll({3: 'juan'});
  print(persona);

  Map<String, dynamic> persona2 = {
    'nombre': 'rodrigo',
    'edad': 42,
    'soltero': 'true',
    'true': 'false',
    '1': 100,
    '2': 2000
  };
  print('persona2');
  print(persona2);
  print(persona2['edad']);
  print(persona2['true']);
  print(persona2['2']);

  persona2.addAll({'3': 'juan'});
  print(persona2);
}



//<>
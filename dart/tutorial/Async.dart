void main() async {
  print('antes de la peticion');
  final data = await httpGet('https://api.nasa.com/aliens');
  print(data);
//  httpGet('https://api.nasa.com/aliens').then((data) {
//    print(data.toUpperCase());
//  });
//final nombre = await getNombre('10');
  //getNombre('10').then(print);
  // print(nombre);
  print('fin del programa');
}

Future<String> getNombre(String id) async {
  return '$id - Rodrigo';
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () => 'Hola mundo - 3 segundos');
}

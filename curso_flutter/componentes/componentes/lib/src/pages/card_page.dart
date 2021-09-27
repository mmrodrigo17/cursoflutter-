import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
          //padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
          padding: EdgeInsets.all(10.0),
          children: [
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo2(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo2(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo2(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo2(),
            SizedBox(
              height: 30.0,
            ),
          ]),
    );
  }
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: [
        ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Soy el Título de la tarjeta'),
            subtitle: Text(
                'Subtitulo de la card - aquie esta el texto general con mucha informacion para mostrar e identificar los datos')),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //FlatButton(onPressed: onPressed, child: child)
            TextButton(onPressed: () {}, child: Text('Cancelar')),
            TextButton(onPressed: () {}, child: Text('Ok'))
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo2() {
  final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
    children: [
      FadeInImage(
          height: 300.0,
          fit: BoxFit.cover,
          fadeInDuration: Duration(milliseconds: 200),
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg')),
      // Image(
      //     image: NetworkImage(
      //         'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg')),
      // // Text('No tengo idea de que poner'),
      Container(
        padding: EdgeInsets.all(10.0),
        child: Text('No tengo idea de que poner'),
      )
    ],
  ));
  return Container(
    child: ClipRRect(child: card, borderRadius: BorderRadius.circular(30.0)),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0)),
        ]
        //color: Colors.red
        ),
  );
}

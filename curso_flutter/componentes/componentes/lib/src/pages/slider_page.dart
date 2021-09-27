import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquerCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(children: [
          _crearSlider(),
          _crearCheckboxBox(),
          _crearSwitch(),
          Expanded(child: _crearImagen()),
        ]),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.red,
        label: 'Tamaño de la imagen:',
        // divisions: 50,
        value: _valorSlider,
        min: 100.0,
        max: 500.0,
        onChanged: (_bloquerCheck)
            ? null
            : (valor) {
                setState(() {
                  _valorSlider = valor;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
        image: NetworkImage(
            'https://www.lavanguardia.com/files/image_948_465/uploads/2017/04/10/5fa3c6ca21373.jpeg'),
        width: _valorSlider,
        fit: BoxFit.contain);
  }

  Widget _crearCheckboxBox() {
    // return Checkbox(
    //     value: _bloquerCheck,
    //     onChanged: (opt) {
    //       print(opt);
    //       setState(() {
    //         _bloquerCheck = opt;
    //       });
    //     });

    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _bloquerCheck,
        onChanged: (opt) {
          print(opt);
          setState(() {
            _bloquerCheck = opt;
          });
        });
  }

  Widget _crearSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _bloquerCheck,
        onChanged: (opt) {
          print(opt);
          setState(() {
            _bloquerCheck = opt;
          });
        });
  }
}

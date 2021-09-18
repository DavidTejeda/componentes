import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  //SliderPage({Key? key}) : super(key: key);
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hola mundo'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            _crearSlider(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _valorSlider,
      label: 'Tamaño de la imagen',
      min: 0.0,
      divisions: 20,
      activeColor: Colors.indigo,
      max: 400.0,
      onChanged: (valor) {
        _valorSlider = valor;
        setState(() {});
      },
    );
  }
}

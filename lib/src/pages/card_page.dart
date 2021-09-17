import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: //EdgeInsets.all(20),
            EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        children: [_cardTipo1(), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        child: Column(
      children: <Widget>[
        ListTile(
          title: Text('Hola mundo'),
          leading: Icon(Icons.ac_unit_sharp),
          subtitle:
              Text('Esta es una descripción que le he asignado a esta tarjeta'),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          TextButton(onPressed: () => {}, child: Text('Cancelar')),
          TextButton(onPressed: () => {}, child: Text('OK'))
        ]),
      ],
    ));
  }

  Widget _cardTipo2() {
    return Card(
        child: Column(children: <Widget>[
      FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 400.0,
          fit: BoxFit.cover,
          image: NetworkImage(
              'https://images.hdqwalls.com/wallpapers/nature-landscape-mountains-5k-ev.jpg')),
      //Image(image: NetworkImage('https://images.hdqwalls.com/wallpapers/nature-landscape-mountains-5k-ev.jpg')),
      Container(
        padding: EdgeInsets.all(20.0),
        child: Text('no tengo que poner'),
      )
    ]));
  }
}

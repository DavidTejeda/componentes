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
        children: [
          _cardTipo1(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: ListTile(
        leading: Icon(Icons.ac_unit_rounded),
        title: Text('Mi primera tarjeta'),
      ),
    );
  }
}

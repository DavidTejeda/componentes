import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(children: _crearItems()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (var item in opciones) {
      final tempWidget = ListTile(
        title: Text(item),
        subtitle: Text('El subtitulo'),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {},
      );
      lista..add(tempWidget)..add(Divider(height: 5.0));
    }

    return lista;
  }
}

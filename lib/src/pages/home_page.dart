import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';
import 'package:components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        centerTitle: false,
        backgroundColor: Color(0xff885566),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _listaItems(data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right_outlined),
        subtitle: Text('subtitulo de mi aplicación'),
        onTap: () {
          //funcion para moverse con rutas SIN nombre
          //final route = MaterialPageRoute(
          //builder: (context) => AlertPage(),
          //);
          //Navigator.push(context, route);

          //function para moverse con rutas con nombre
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}

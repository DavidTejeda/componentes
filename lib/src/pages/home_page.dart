//import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';
import 'package:components/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        //flexibleSpace: ListTile(title: Text('hola mundo !|')),
        centerTitle: false,
        backgroundColor: Color(0xff885566),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
      ]),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      //initialData: [], la informacion inicial que tendra nuestro future
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data, context));
      },
    );
  }

  List<Widget> _listaItems(data, BuildContext context) {
    if (data == []) {
      return [];
    } else {
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
}

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  //const name({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar('hola mundo'),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit_outlined),
          //utiliamos la propiedad del floating con la clase navigator con la funcion pop, al carg
          //pasarle el contexto sabe cual es la pagina anterior.
          onPressed: () => Navigator.pop(context)),
    );
  }
}

AppBar globalAppBar(String titulo) {
  return AppBar(
    title: Text(titulo),
    centerTitle: true,
    automaticallyImplyLeading: false,
  );
}

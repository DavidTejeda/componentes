import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  //const name({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar('hola mundo'),
      body: Center(
          child: ElevatedButton(
              child: Text('Elevated click me'),
              onPressed: () => {_mostrarAlerta(context)},
              style: ElevatedButton.styleFrom(
                  primary: Colors.red, shape: StadiumBorder()))),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit_outlined),
          //utiliamos la propiedad del floating con la clase navigator con la funcion pop, al carg
          //pasarle el contexto sabe cual es la pagina anterior.
          onPressed: () => Navigator.pop(context)),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            title: Text('ejemplo'),
            content: Text('el mensaje de nuestro ejemplo'),
            actions: [
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                TextButton(onPressed: () => {}, child: Text('Cancelar')),
                TextButton(
                    onPressed: () => {Navigator.of(context).pop()},
                    child: Text('OK'))
              ]),
            ],
          );
        });
  }
}

AppBar globalAppBar(String titulo) {
  return AppBar(
    title: Text(titulo),
    centerTitle: true,
    automaticallyImplyLeading: false,
  );
}

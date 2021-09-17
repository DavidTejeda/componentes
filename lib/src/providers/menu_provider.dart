import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle; //con show invocamos solo lo que necesitamos de la biblioteca

class _MenuProvider {
  List<dynamic> opciones = [];

  Future<List<dynamic>> cargarData() async {
    //el root bundle sirve para obtener los recursos que se asignaron a la aplicacion en este caso lo que hay
    //assets  
    final resp = await rootBundle.loadString('data/menu_opts.json');
    //espera a que esto sea finalizado para continuar con la ejecución
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

//se instancia la clase menu provider
final menuProvider = new _MenuProvider();
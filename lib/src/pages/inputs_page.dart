import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  //InputsPage({Key? key}) : super(key: key);

  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _nombre = "";
  String _email = "";
  String _fecha = "ingrese la fecha";
  String _opcSeleccionada = '1';
  List<String> _listaPoderes = ['1', '2', '3'];
  TextEditingController _inputFieldController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inputs Page")),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: <Widget>[
            _createInput(),
            Divider(),
            _createEmailInput(),
            Divider(),
            _createPasswordInput(),
            Divider(),
            _crearFecha(context),
            Divider(),
            _mostrarDropdown(),
            Divider(),
            _mostrarPersona(_nombre)
          ]),
    );
  }

  Widget _createInput() {
    return TextField(
        autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            counter: Text("Letras ${_nombre.length}"),
            hintText: "nombre",
            labelText: "nombre",
            helperText: "solo es el nombre",
            suffixIcon: Icon(Icons.accessibility),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            icon: Icon(Icons.account_circle_rounded)),
        onChanged: (value) {
          //print(value);
          _nombre = value;
          setState(() {});
        });
  }

  Widget _mostrarPersona(String nombre) {
    return ListTile(title: Text(nombre), subtitle: Text(_email));
  }

  _createEmailInput() {
    return TextField(
        autofocus: false,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            counter: Text("Letras ${_email.length}"),
            hintText: "correo",
            labelText: "correo",
            helperText: "solo es el nombre",
            suffixIcon: Icon(Icons.email),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            icon: Icon(Icons.alternate_email)),
        onChanged: (value) {
          //print(value);
          _email = value;
          setState(() {});
        });
  }

  _createPasswordInput() {
    return TextField(
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
            counter: Text("Letras ${_email.length}"),
            hintText: "password",
            labelText: "password",
            helperText: "solo es el nombre",
            suffixIcon: Icon(Icons.email),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            icon: Icon(Icons.alternate_email)),
        onChanged: (value) {
          //print(value);
          _email = value;
          setState(() {});
        });
  }

  Widget _crearFecha(context) {
    return TextField(
        enableInteractiveSelection: false,
        controller: _inputFieldController,
        autofocus: false,
        obscureText: false,
        decoration: InputDecoration(
            counter: Text("Letras 0"),
            hintText: "Fecha de nacimiento",
            helperText: "solo es la fecha",
            suffixIcon: Icon(Icons.date_range),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            icon: Icon(Icons.calendar_today)),
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
        });
  }

  _selectDate(context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2021),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));

    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem> _getOpcDropdown() {
    List<DropdownMenuItem<String>> list = [];
    _listaPoderes.forEach((poder) {
      list.add(DropdownMenuItem(child: Text(poder), value: poder));
    });
    return list;
  }

  Widget _mostrarDropdown() {
    return Row(children: <Widget>[
      Icon(Icons.ac_unit),
      Expanded(
        child: DropdownButton<dynamic>(
          value: _opcSeleccionada,
          items: _getOpcDropdown(),
          onChanged: (opt) {
            _opcSeleccionada = opt;
            setState(() {});
          },
        ),
      ),
    ]);
  }
}

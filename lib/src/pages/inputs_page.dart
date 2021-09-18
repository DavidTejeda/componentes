import 'package:flutter/material.dart';

class InputsPage extends StatefulWidget {
  //InputsPage({Key? key}) : super(key: key);

  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  String _nombre = "";
  String _email = "";
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
            hintText: "nombre",
            labelText: "nombre",
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
            hintText: "nombre",
            labelText: "nombre",
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
        autofocus: false,
        obscureText: false,
        decoration: InputDecoration(
            counter: Text("Letras ${_email.length}"),
            hintText: "Fecha de nacimiento",
            labelText: "Fecha de nacimiento",
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

  _selectDate(BuildContext context) async {
    DateTime pick = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2021),
      lastDate: new DateTime(2025),
    );
    if (pick != null) {}
  }
}

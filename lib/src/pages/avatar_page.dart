import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  //const name({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AvatarPage'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm_rounded),
        onPressed: () => Navigator.pushNamed(context, 'card'),
      ),
    );
  }
}

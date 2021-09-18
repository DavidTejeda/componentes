import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  //AnimatedContainerPage({Key? key}) : super(key: key);
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.black;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiaForma,
        child: Icon(Icons.play_arrow),
      ),
      appBar: AppBar(
        title: Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),
        ),
      ),
    );
  }

  void _cambiaForma() {
    final _random = Random();
    setState(() {
      _width = _random.nextInt(300).toDouble();
      _height = _random.nextInt(300).toDouble();
      _borderRadius = BorderRadius.circular(_random.nextInt(100).toDouble());
      _color = Color.fromRGBO(
          _random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1);
    });
  }
}

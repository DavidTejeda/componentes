import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  //const name({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AvatarPage'),
        actions: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                'http://c.files.bbci.co.uk/48DD/production/_107435681_perro1.jpg'),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, left: 10),
            child:
                CircleAvatar(child: Text('DT'), backgroundColor: Colors.black),
          )
        ],
        centerTitle: true,
      ),
      body: Center(
          child: FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              fadeInDuration: Duration(milliseconds: 200),
              image: NetworkImage(
                  'http://c.files.bbci.co.uk/48DD/production/_107435681_perro1.jpg'))),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm_rounded),
        onPressed: () => Navigator.pushNamed(context, 'card'),
      ),
    );
  }
}

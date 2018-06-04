import 'package:flutter/material.dart';

class BagScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('BagScreen'),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: new Column(
        children: <Widget>[
          new Image.asset(''),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ShowGoodsScreen extends StatelessWidget {

  final String title = 'Title';


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: new Text(
          'ShowGoodsScreen',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.chat_bubble),
              onPressed: (){

              })
        ],
      ),
      body: new Padding(
        padding: const EdgeInsets.all(8.0),
        child: new ListView(
          children: <Widget>[
            new Container(
              child: new Container(
                child: new Image.asset(''),
              )
            )
          ],
        ),
      ),
    );
  }
}

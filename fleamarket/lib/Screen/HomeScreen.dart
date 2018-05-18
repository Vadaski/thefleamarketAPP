import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/HomeNavigation.dart';
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Fleamarket'),
        backgroundColor: const Color(0xFF2DBD3A),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: null)
        ],
        //活动空间
        flexibleSpace: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Container(
            //Todo:首页image
           // child: new Image(image: null),
          ),
        ),
      ),
      body: new Container(
          child: new Text('这里是ListView'),
      ),
      //bottomNavigationBar: new HomeNavigation() ,
    );
  }
}
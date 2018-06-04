import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/GoodsCard.dart';
import 'package:fleamarket/Screen/SearchScreen.dart';
import 'package:fleamarket/Screen/ShowGoodsScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();
  final List<GoodsCard> _cards = <GoodsCard>[];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
//        title: _buildTextComposer(),
        backgroundColor: Colors.orangeAccent,
        flexibleSpace: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Container(
            child: new Image.asset('images/logo.png'),
          ),
        ),
        actions: <Widget>[
          new Container(
            margin: new EdgeInsets.symmetric(horizontal: 4.0),
            child: new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () {
                Navigator.of(context).pushNamed('/SearchScreen');
//                  _handlerSubmitted(_searchController.text);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
          child: new Icon(Icons.add),
          onPressed: () {
//            _openNewPage();
            Navigator.of(context).pushNamed('/ImagePickerScreen');
          }),
      body: new RefreshIndicator(
          child: new ListView(
            children: <Widget>[
              new GoodsCard(),
              new GoodsCard(),
              new GoodsCard(),
              new GoodsCard(),
              new GoodsCard(),
            ],
          ),
          onRefresh: () async {
            await new Future.delayed(const Duration(seconds: 1));
          }),
    );
  }

  Widget _buildTextComposer() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new TextField(
              controller: _searchController,
              onSubmitted: _handlerSubmitted,
              decoration: new InputDecoration.collapsed(
                hintText: "Search",
                hintStyle: new TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  void _handlerSubmitted(String text) {
    _searchController.clear();
  }

  void _openNewPage() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new Scaffold(
//            appBar: new AppBar(
//                title: new Text('新的页面')
//            ),
            body: new Center(
              child: new Text(
                '点击浮动按钮返回首页',
              ),
            ),
            floatingActionButton: new FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/ChatScreen');
              },
              child: new Icon(Icons.replay),
            ),
          );
        },
      ));
    });
  }
}

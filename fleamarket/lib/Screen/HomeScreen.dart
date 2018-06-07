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
        backgroundColor: Colors.black54,
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
              new GoodsCard(
                image: new Image.asset('images/goods6.jpg'),
                title: 'SUPERME TSHIRT',
                subTitle: '夏季爆款猫头T',
                price: 299,
              ),
              new GoodsCard(
                image: new Image.asset('images/goods7.jpg'),
                title: '手作 COOKIE',
                subTitle: '山下小姐手作饼干',
                price: 66,
              ),
              new GoodsCard(
                image: new Image.asset('images/goods2.jpg'),
                title: '日清速食料理',
                subTitle: '包邮哦，现在下单买一送一',
                price: 6,
              ),
              new GoodsCard(
                image: new Image.asset('images/goods03.jpg'),
                title: 'WE SUMMER夏日特卖',
                subTitle: '限时贩售',
                price: 388,
              ),
              new GoodsCard(
                image: new Image.asset('images/goods4.jpg'),
                title: 'LOGO MANIA',
                subTitle: 'BOLD.BRANDED AND BACK IN VOICE',
                price: 3999,
              ),
              new GoodsCard(
                image: new Image.asset('images/goods5.png'),
                title: 'COSMETIQUES NATURELS & BIO',
                subTitle: '空气清新剂',
                price: 10,
              ),
              new GoodsCard(
                image: new Image.asset('images/goods8.jpg'),
                title: 'AIGNER WATCH',
                subTitle: 'AIGNER SEASON SII',
                price: 8999,
              ),
              new GoodsCard(
                image: new Image.asset('images/goods1.jpg'),
                title: '星巴克',
                subTitle: '星巴克碎冰冰',
                price: 25,
              ),
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

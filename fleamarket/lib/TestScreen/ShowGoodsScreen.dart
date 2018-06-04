import 'package:flutter/material.dart';

class ShowGoodsScreen extends StatefulWidget {
  static const String routeName = '/ShowGoods';

  @override
  State<StatefulWidget> createState() => new ShowGoodsScreenState();
}

class ShowGoodsScreenState extends State<ShowGoodsScreen> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      new GlobalKey<ScaffoldState>();
  final double _appBarHeight = 256.0;

  @override
  Widget build(BuildContext context) {
    return new Theme(
        data: new ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.teal,
          platform: Theme.of(context).platform,
        ),
        child: new Scaffold(
          key: _scaffoldKey,
          body: new CustomScrollView(
            slivers: <Widget>[
              new SliverAppBar(
                expandedHeight: _appBarHeight,
                pinned: true,
                actions: <Widget>[
                  new IconButton(
                      icon: const Icon(Icons.arrow_back),
                      tooltip: 'back',
                      onPressed: () {
                        Navigator.pop(context); //这句不确定对不对
                      })
                ],
                flexibleSpace: new FlexibleSpaceBar(
                  title: new Text('商品展示页面',style: TextStyle(color: Colors.teal),),
                  background: new Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      new Image.asset(
                        'images/goods1.jpg',
                        fit: BoxFit.cover,
                        height: _appBarHeight,
                      ),
                      const DecoratedBox(
                        decoration: const BoxDecoration(
                          gradient: const LinearGradient(
                            begin: const Alignment(0.0, -1.0),
                            end: const Alignment(0.0, -0.4),
                            colors: const <Color>[
                              const Color(0x60000000),
                              const Color(0x00000000)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              new SliverList(
                  delegate: new SliverChildListDelegate(<Widget>[
                new Container(
                  child: new Center(
                    child: new Text('这里是商品展示页面'),
                  ),
                )
              ]))
            ],
          ),
        ));
  }
}

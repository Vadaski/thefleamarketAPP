import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/GoodsCard.dart';
import 'package:fleamarket/Screen/SearchScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<GoodsCard> list= [];

  @override
  void initState() {
    super.initState();
    for(int i=0;i<10;i++){
      list.add(new GoodsCard(
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('homescreen'),
        backgroundColor: Colors.teal,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search,color: Colors.white,),
            onPressed: null,
          ),
        ],
        flexibleSpace: new Container(),
      ),
    );
  }


}

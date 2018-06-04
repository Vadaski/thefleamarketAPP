import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/GoodsCard.dart';

class BagScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new BagScreenState();
}

class BagScreenState extends State<BagScreen> {
  final List<GoodsCard> _shoppingCart = <GoodsCard>[];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('BagScreen'),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) => _shoppingCart[index],
        itemCount: _shoppingCart.length,
      ),
      floatingActionButton: new FlatButton(
          onPressed: addGoods,
          child: new Icon(Icons.add)),
    );
  }

  void addGoods() {
    setState(() {
      _shoppingCart.add(new GoodsCard());
    });
  }
}

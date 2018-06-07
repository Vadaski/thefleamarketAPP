import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/GoodsCard.dart';

class BagScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new BagScreenState();
}

class BagScreenState extends State<BagScreen> {
  final List<GoodsCard> _shoppingCart = <GoodsCard>[];

  @override
  void initState() {
    addGoods();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          'BagScreen',
          style: TextStyle(
            color: Colors.black54
          ),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: new ListView.builder(
        itemBuilder: (BuildContext context, int index) => _shoppingCart[index],
        itemCount: _shoppingCart.length,
      ),
      floatingActionButton:
          new FlatButton(onPressed: addGoods, child: new Icon(Icons.add)),
    );
  }

  void addGoods() {
    setState(() {
      _shoppingCart.add(
        new GoodsCard(
          image: new Image.asset('images/goods5.png'),
          title: 'COSMETIQUES NATURELS & BIO',
          subTitle: '空气清新剂',
          price: 10,
        ),
      );
    });
  }
}

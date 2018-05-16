import 'package:flutter/material.dart';
import 'ShoppingListItem.dart';
import 'package:fleamarket/Entity/Goods.java';
class ShoppingList extends StatefulWidget {

  ShoppingList({Key key, this.goods}) : super(key: key);

  final List<Goods> goods;

  @override
  _ShoppingListState createState() => new _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  Set<Goods> _shoppingCart = new Set<Goods>();

  void _handleCartChanged(Goods goods, bool inCart) {
    setState(() {
      if (inCart)
        _shoppingCart.add(goods);
      else
        _shoppingCart.remove(goods);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Shopping List'),
      ),
      body: new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: widget.goods.map((Goods goods) {
          return new ShoppingListItem(
            goods: goods,
            inCart: _shoppingCart.contains(goods),
            onCartChanged: _handleCartChanged,
          );
        }).toList(),
      ),
    );
  }
}

//void main() {
//  runApp(new MaterialApp(
//    title: 'Shopping App',
//    home: new ShoppingList(
//      products: <Product>[
//        new Product(name: 'Eggs'),
//        new Product(name: 'Flour'),
//        new Product(name: 'Chocolate chips'),
//      ],
//    ),
//  ));
//}
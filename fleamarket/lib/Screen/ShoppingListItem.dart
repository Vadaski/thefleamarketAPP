import 'package:fleamarket/Entity/Goods.java';
import 'package:flutter/material.dart';

typedef void CartChangedCallback(Goods goods,bool incart);

class ShoppingListItem extends StatelessWidget {
  ShoppingListItem({Goods goods, this.inCart, this.onCartChanged})
      : goods = goods,
        super(key: new ObjectKey(goods));

  final Goods goods;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  Color _getColor(BuildContext context) {
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  TextStyle _getTextStyle(BuildContext context) {
    if (!inCart) return null;

    return new TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  @override
  Widget build(BuildContext context) {

      return new  Container(
        child: new GestureDetector(
          onTap: (){onCartChanged(goods,!inCart);},
          child: new Card(
            color:  _getColor(context),
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                 ListTile(
                  leading: const Icon(Icons.album),
                  subtitle: new Text(goods.name[0]),
                ),
                new ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: new ButtonBar(
                    children: <Widget>[
                      new FlatButton(
                        child:  Text('BUY TICKETS', style: _getTextStyle(context)),
                        onPressed: () { /* ... */ },
                      ),
                      new FlatButton(
                        child:  Text('LISTEN',style: _getTextStyle(context)),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }

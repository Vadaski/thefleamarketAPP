import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/ShowGoodsScreen.dart';



class GoodsCard extends StatelessWidget {

  GoodsCard({
    Key key,
    this.image,
    this.title,
    this.subTitle,
    this.price
  });

  Image image;
  String title;
  String subTitle;
  int price;

  @override
  Widget build(BuildContext context) {
    return  new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new GestureDetector(
        onTap: (){
          Navigator.of(context).push(new MaterialPageRoute<Null>(
            builder: (BuildContext context) {
              return new ShowGoodsScreen();
            },
          )
          );
        },
        child: new Card(
            elevation: 8.0,
            child: new Column(
              children: <Widget>[
                new Container(
//                  child: new Image.asset('images/goods4.jpg'),
                child: image,
                ),
//                new Divider(),
                new ListTile(
                  leading: new Icon(Icons.add_shopping_cart),
                  title: new Text(title),
                  subtitle: new Text(subTitle+"     \$"+price.toString()),
                )
              ],
            ),
          ),
      ),
    );
  }


}

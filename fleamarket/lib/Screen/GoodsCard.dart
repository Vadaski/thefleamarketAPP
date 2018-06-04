import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/ShowGoodsScreen.dart';

class GoodsCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new GoodsCardState();
}

class GoodsCardState extends State<GoodsCard> {

  @override
  Widget build(BuildContext context) {
    return  new Padding(
      padding: const EdgeInsets.all(8.0),
      child: new GestureDetector(
        onTap: (){
          _openNewPage();
        },
        child: new Card(
            elevation: 8.0,
            child: new Column(
              children: <Widget>[
                new Container(
                  child: new Image.asset('images/goods4.jpg'),
                ),
//                new Divider(),
                new ListTile(
                  title: new Text('Title'),
                  subtitle: new Text('subTitle'),
                )
              ],
            ),
          ),
      ),
    );
  }
  void _openNewPage() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new ShowGoodsScreen();
        },
      ));
    });
  }

}

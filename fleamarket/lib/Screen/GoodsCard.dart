import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/ShowGoodsScreen.dart';



class GoodsCard extends StatelessWidget {



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


}

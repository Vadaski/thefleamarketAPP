import 'package:flutter/material.dart';

class GoodsCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new GoodsCardState();
}

class GoodsCardState extends State<GoodsCard> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: double.infinity,
      height: 350.0,
      child: new Card(
        color: Colors.teal,
        elevation: 350.0,
        child: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                width: double.infinity,
                height: 250.0,
                color: Colors.blue,
                //TODO:这里需要一张图片
              ),
              new Row(
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      width: 75.0,
                      height: 75.0,
                      color: Colors.amber,
                      child: new Center(),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Container(
                      width: 290.0,
                      height: 75.0,
                      color: Colors.amber,
                      child: new Center(),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

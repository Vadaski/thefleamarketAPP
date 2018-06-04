
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
//  const ProfileScreen({Key key}) : super(Key: key);
  static const String routeName = '/Profile';

  @override
  State<StatefulWidget> createState() => new ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ProfileScreen'),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: new Column(
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Container(
                child: new Image.asset('images/profile.jpg'),
              ),
              new Column(
                children: <Widget>[
                  SizedBox(height: 48.0),
                  new Row(
                    children: <Widget>[
                      SizedBox(width: 24.0,),
                      new Container(
                        width: 92.0,
                        height: 92.0,
                        child: new CircleAvatar(
                          backgroundImage: new AssetImage('images/touxiang.gif'),
                          radius: 100.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          new Column(
            children: <Widget>[
              new ListTile(
                title: Text('我的商品'),
                subtitle: Text('点击查看'),
              ),
              new ListTile(
                title: Text('我的购物车'),
                subtitle: Text('点击查看'),
              ),
              new ListTile(
                title: Text('我的订单'),
                subtitle: Text('点击查看'),
              ),
            ],
          )
        ],
      ),
    );
  }
}

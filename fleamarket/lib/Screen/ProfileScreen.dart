import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
//  const ProfileScreen({Key key}) : super(Key: key);
  static const String routeName = '/Profile';

  @override
  State<StatefulWidget> createState() => new ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text('ProfileScreen'),
//        backgroundColor: Colors.orangeAccent,
//        centerTitle: true,
//      ),
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
                      SizedBox(
                        width: 24.0,
                      ),
                      new Container(
                        width: 92.0,
                        height: 92.0,
                        child: new GestureDetector(
                          child: new CircleAvatar(
                            backgroundImage:
                                new AssetImage('images/touxiang.gif'),
                            radius: 100.0,
                          ),
                          onLongPress: getImage,
                        ),
                      ),
                      SizedBox(
                        width: 24.0,
                      ),
                      new Container(
                        child: new Column(
                          children: <Widget>[
                            new Text(
                              'LitaVadaski',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          new Expanded(
            child: new ListView(
              children: <Widget>[
                new ListTile(
                  title: Text('我发布的商品'),
                  subtitle: Text('点击查看'),
                ),
                new ListTile(
                  title: Text('我买到的'),
                  subtitle: Text('点击查看'),
                ),
                new ListTile(
                  title: Text('我卖出的商品'),
                  subtitle: Text('点击查看'),
                ),
                new ListTile(
                  title: Text('我的订单'),
                  subtitle: Text('点击查看'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

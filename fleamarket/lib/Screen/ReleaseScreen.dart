import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/ImagePickerTestScreen.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
class ReleaseScreen extends StatefulWidget {

  ReleaseScreen({this.image});

   File image;

  @override
  State<StatefulWidget> createState() => new ReleaseScreenState();
}

class ReleaseScreenState extends State<ReleaseScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[new Container(

        )],
      ),
    );
  }
}

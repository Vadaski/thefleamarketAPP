import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fleamarket/Screen/ReleaseScreen.dart';

class PickImageScreen extends StatefulWidget {
  @override
  _PickImageScreenState createState() => new _PickImageScreenState();
}

class _PickImageScreenState extends State<PickImageScreen> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
//    Navigator.of(context).pushNamed('/ReleaseScreen');
    Navigator.of(context).push(
        new MaterialPageRoute(
            builder: (_){
              return new ReleaseScreen(image: _image,);
            }
        )
    );
  }



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.orangeAccent,
        title: new Text('Select Goods'),
        centerTitle: true,
      ),
      body: new Center(
        child: _image == null
            ? new Text('请选择你要发布的商品照片')
            : new Image.file(_image),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: new Icon(
          Icons.add_a_photo,
        ),
        backgroundColor: Colors.orangeAccent,
      ),
    );
  }
}

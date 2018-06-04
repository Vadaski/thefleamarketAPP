import 'package:flutter/material.dart';
import 'package:fleamarket/TestScreen/ChatScreen.dart';
class FriendlyChat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "friendlyChat",
      home: new ChartScreen(),
    );
  }
}
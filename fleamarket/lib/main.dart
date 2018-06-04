import 'package:flutter/material.dart';

//import 'package:fleamarket/Screen/TEST/friendlyChatApp.dart';
import 'package:fleamarket/Screen/StartScreen.dart';
//import 'package:fleamarket/Screen/SearchScreen.dart';
import 'package:fleamarket/TestScreen/TEST2.dart';
//import 'package:fleamarket/TestScreen/STUDY.dart';
import 'package:fleamarket/TestScreen/ShowGoodsScreen.dart';
import 'package:fleamarket/TestScreen/Pesto.dart';
import 'package:fleamarket/TestScreen/FriendlyChat.dart';
import 'package:fleamarket/Screen/SearchScreen.dart';
import 'package:fleamarket/Screen/LoginScreen.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Fleamarket',
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    home: new SplashScreen(),
  ));
}


//void main() => runApp(new FriendlyChat());
import 'package:flutter/material.dart';
//import 'package:fleamarket/Screen/StartScreen.dart';
import 'package:fleamarket/Screen/Test.dart';
//void main() {
//  runApp(new MaterialApp(
//    debugShowCheckedModeBanner: false,
//    title: 'Fleamarket',
//    home: new SplashScreen(),
//  ));
//}

void main() => runApp(
    new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('TEST'),
        ),
        bottomNavigationBar:  new HomeNavigateScreen(),
      ),
    )
);

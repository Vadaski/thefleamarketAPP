import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/HomeScreen.dart';
import 'package:fleamarket/Screen/BagScreen.dart';
import 'package:fleamarket/Screen/ProfileScreen.dart';

class NavigationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new NavigationScreenState();
}

class NavigationScreenState extends State<NavigationScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new TabBarView(
          children: <Widget>[
            new HomeScreen(),
            new BagScreen(),
            new ProfileScreen(),
          ],
          controller: controller,
        ),
        bottomNavigationBar: new Material(

          color: Colors.teal,
          child: new TabBar(
              indicatorWeight: 1.0,
              controller: controller,
              tabs: <Tab>[
                new Tab(text: 'Home',icon:new Icon(Icons.home,size: 32.0,)),
                new Tab(text: 'Bag',icon:new Icon(Icons.shopping_basket,size: 32.0,)),
                new Tab(text: 'Profile',icon:new Icon(Icons.account_circle,size: 32.0,)),
              ]),
        ),
      ),
    );
  }
}
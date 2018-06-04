import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/HomeScreen.dart';
import 'package:fleamarket/Screen/BagScreen.dart';
import 'package:fleamarket/Screen/ProfileScreen.dart';
import 'package:fleamarket/Screen/LoginScreen.dart';
import 'package:fleamarket/Screen/SearchScreen.dart';
import 'package:fleamarket/TestScreen/ShowSearchResultScreen.dart';
import 'package:fleamarket/Screen/ImagePickerTestScreen.dart';
import 'package:fleamarket/TestScreen/FriendlyChat.dart';
import 'package:fleamarket/Screen/ReleaseScreen.dart';
import 'package:fleamarket/Screen/ImagePickerTestScreen.dart';

class NavigationScreen extends StatefulWidget {
  static const String routeName ='/Navigate';
  @override
  State<StatefulWidget> createState() => new NavigationScreenState();
}

class NavigationScreenState extends State<NavigationScreen> {
  PageController pageController;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      routes: <String, WidgetBuilder>{
        '/SearchScreen':(BuildContext context) => new SearchScreen(),
        '/LoginScreen': (BuildContext context) => new LoginPage(),
        '/ShowSearchResultScreen': (BuildContext context) => new ShowSearchResultScreen(),
        '/imagePickerTestScreen': (BuildContext context) => new PickImageScreen(),
        '/ChatScreen': (BuildContext context) => new FriendlyChat(),
        '/ReleaseScreen': (BuildContext context) => new ReleaseScreen(),
        '/ImagePickerScreen': (BuildContext context) => new PickImageScreen(),
      },
      home: new Scaffold(
        backgroundColor: Colors.grey,
        body: new PageView(
            children: [
              new HomeScreen(),
              new BagScreen(),
              new ProfileScreen(),
            ],
            controller: pageController,
            onPageChanged: onPageChanged),
        bottomNavigationBar: new BottomNavigationBar(
          fixedColor: Colors.orangeAccent,
            items: [
          new BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
          ),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.local_grocery_store),
              title: new Text("Bag")
          ),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: new Text("Profile")
          )
        ], onTap: onTap, currentIndex: page),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController(initialPage: this.page);
  }

  void onTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this.page = page;
    });
  }
  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}

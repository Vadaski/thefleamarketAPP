import 'package:flutter/material.dart';

class HomeNavigateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new HomeNavigateScreenState();
}

class HomeNavigateScreenState extends State<HomeNavigateScreen> with SingleTickerProviderStateMixin{

  int _currentIndex = 1;
  BottomNavigationBarType _Type = BottomNavigationBarType.fixed;
  List<NavigationIconView> _navigationViews;


  void initState() {
    // TODO: implement initState
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.home),
        title: new Text('主页'),
        color: Colors.orangeAccent,
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.shopping_basket),
        title: new Text('背包'),
        color: Colors.orangeAccent,
        vsync: this,
      ),new NavigationIconView(
        icon: new Icon(Icons.account_circle),
        title: new Text('主页'),
        color: Colors.orangeAccent,
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews)
      view.controller.addListener(_rebuild);
    _navigationViews[_currentIndex].controller.value = 1.0;
  }
  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews)
      view.controller.dispose();
  }
  void _rebuild() {
    setState((){
    });
  }

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      items: _navigationViews
        .map((NavigationIconView navigationView) => navigationView.item)
        .toList(),
      currentIndex: _currentIndex,
      type: _Type,
      onTap: (int index){
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
        });
      },
    );
  }

  }


class NavigationIconView {
  final Widget _icon;
  final Color _color;
  final BottomNavigationBarItem item;
  final AnimationController controller;
  CurvedAnimation _animation;
  NavigationIconView({
    Widget icon,
    Widget title,
    Color color,
    TickerProvider vsync,
  }):_icon = icon,
        _color = color,
        item = new BottomNavigationBarItem(
            icon: icon,
            title: title
        ),
        controller = new AnimationController(
          duration: kThemeAnimationDuration,
          vsync: vsync,
        ) {
    _animation = new CurvedAnimation(
      parent: controller,
      curve: new Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
  }
  }

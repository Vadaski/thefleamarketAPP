import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SplashState();
}

class SplashState extends State<SplashScreen> with TickerProviderStateMixin {
  Animation animation;

  AnimationController controller;

  var animationStateListener;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
    animation = new Tween(begin: 0.0, end: 1.0).animate(controller);
    animationStateListener = (status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(builder: (context) => new HomeScreen()),
            (route) => route == null);
      }
    };

    animation.addStatusListener((status) => animationStateListener(status));
    //启动动画
    controller.forward();
  }

  Widget build(BuildContext context) {
    return new FadeTransition(
        opacity: animation,
//        child: new Image.network(
//          //TODO:从服务器获取一张图片，默认一张本地图片
//          'http://pic.baike.soso.com/p/20130828/20130828161137-1346445960.jpg',
//          scale: 2.0,
//          fit:BoxFit.cover
//        )
          child: new Image.asset(
              'images/startscreen.jpg',
              scale: 2.0,
            fit: BoxFit.cover,
          ),

    );
  }

  dispose() {
    controller.removeStatusListener(animationStateListener);
    controller.dispose();
    super.dispose();
  }
}

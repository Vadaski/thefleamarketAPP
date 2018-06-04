import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/NavigationScreen.dart';
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
            new MaterialPageRoute(builder: (context) => new NavigationScreen()
            ),
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
      child: new Image.asset(
        'images/start.jpg',
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

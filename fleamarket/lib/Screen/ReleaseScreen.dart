import 'package:flutter/material.dart';
import 'package:fleamarket/TestScreen/ImagePickerTestScreen.dart';

class ReleaseScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>new ReleaseScreenState();
}

class ReleaseScreenState extends State<ReleaseScreen>{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      initialRoute: '/PickImageScreen',
      onGenerateRoute: _getRoute,
      home: new Scaffold(
        

      ),
    );
  }
  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/PickImageScreen') {
      return null;
    }
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => PickImageScreen(),
      fullscreenDialog: true,
    );
  }
}
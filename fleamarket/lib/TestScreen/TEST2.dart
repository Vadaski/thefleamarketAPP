import 'package:flutter/material.dart';
import 'dart:math';


class ChartPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new ChartPageState();

}

class ChartPageState extends State<ChartPage>{
  final random = new Random();
  int datasSet;

  void changeData(){
    setState(() {
      datasSet = random.nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('Data set: $datasSet'),
      ),
      floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          onPressed: changeData
      ),
    );
  }

}
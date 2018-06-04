import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  static const String routeName = '/Search';
  @override
  State<StatefulWidget> createState() => new SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  final _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: new BackButton(
          color: Colors.teal,
        ),
        flexibleSpace: new Container(
          child: new Material(
            borderRadius:  BorderRadius.circular(10.0),
            child: new TextField(
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'Search',
                  fillColor: Colors.white,
              ),
              controller: _controller,
            ),
          ),
        ),
      ),
    );
  }
}

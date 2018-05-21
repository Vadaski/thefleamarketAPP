import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SearchScreenState();
}

class SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: new BackButton(
          color: Colors.teal,
        ),
      //  flexibleSpace: new TextField(),
        actions: <Widget>[
          new Container(
            child: new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new RaisedButton(
//                padding: const EdgeInsets.all(8.0),
                onPressed: null,
                child: new Text('Search'),
                color: Colors.teal,
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class chatApp extends StatefulWidget {
  @override
  FriendlychatAppState createState() {
    return new FriendlychatAppState();
  }
}

class FriendlychatAppState extends State<chatApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Friendlychat",
      home: new ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  //modified
  @override //new
  State createState() => new ChatScreenState(); //new
}

// Add the ChatScreenState class definition in main.dart.

class ChatScreenState extends State<ChatScreen> {

  final TextEditingController _controller = new TextEditingController();

  void _handleSubmitted(String text) {
    _controller.clear();
  }

  Widget _buildTextComposer(){
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
        children: <Widget>[
          new Flexible(
            child: new TextField(
              controller: _controller,
              onSubmitted: _handleSubmitted,
              decoration: new InputDecoration.collapsed(hintText: "send a message"),
            ),
          ),
          new Container(                                                 //new
            margin: new EdgeInsets.symmetric(horizontal: 4.0),           //new
            child: new IconButton(                                       //new
                icon: new Icon(Icons.send),                                //new
                onPressed: () => _handleSubmitted(_controller.text)),  //new
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Friendlychat"),
        backgroundColor: Colors.teal,
      ),
//      body: _buildTextComposer(),
    );
  }
}

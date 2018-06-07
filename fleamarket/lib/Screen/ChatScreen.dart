import 'package:flutter/material.dart';
import 'package:fleamarket/Screen/ChatMessage.dart';

class ChartScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChartScreen> with TickerProviderStateMixin{
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  bool _isComposing = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("friendlyChat"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: new Column(
        children: <Widget>[
          new Flexible(child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (_,int index) => _messages[index],
          ),
          ),
          new Divider(height: 1.0,),
          new Container(
            decoration: new BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          )
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handlerSubmitted,
                decoration: new InputDecoration.collapsed(hintText: "Search"),
                onChanged: (String text){
                  setState(() {
                    _isComposing = text.length > 0;
                  });
                },
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
//                  onPressed: () => _isComposing?
//                       ()=> _handlerSubmitted(_textController.text) : null,
              onPressed: ()=>_handlerSubmitted(_textController.text),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _handlerSubmitted(String text) {
    _textController.clear();
    setState(() {
      _isComposing = false;
    });
    ChatMessage chatMessage = new ChatMessage(
      text: text,
      animationController: new AnimationController(
          duration: new Duration(
            milliseconds: 700
          ),
          vsync: this),
    );
    setState(() {
      _messages.insert(0, chatMessage);
      chatMessage.animationController.forward();
    });
  }

  @override
  void dispose() {
    for(ChatMessage message in _messages){
      message.animationController.dispose();
      super.dispose();
    }
  }

}

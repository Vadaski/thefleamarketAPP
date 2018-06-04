import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key : key);

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
//  final Route route = new PageRouteBuilder(pageBuilder: null);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: new SafeArea(
        child: new ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            new Column(
              children: <Widget>[
                new Container(
                  width: 120.0,
                  height: 120.0,
                  child: new Image.asset('images/logo.png'),
                ),
                const SizedBox(height: 16.0),
//                const Text('Fleamarket'),
                SizedBox(height: 96.0),
                new Material(
                  borderRadius:  BorderRadius.circular(10.0),
                  child: new TextField(
                    decoration: InputDecoration(
                        filled: true,
                        labelText: 'Username',
                        fillColor: Colors.white),
                    controller: _usernameController,
                  ),
                ),
                SizedBox(height: 12.0),
                new Material(
                  borderRadius:  BorderRadius.circular(10.0),
                  child: new TextField(
                    decoration: InputDecoration(
                        filled: true,
                        labelText: 'Password',
                        fillColor: Colors.white),
                    controller: _passwordController,
                    obscureText: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40.0),
            ButtonBar(
              children: <Widget>[
                new FlatButton(
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                    },
                    child: Text('Cancel',style: TextStyle(color: Colors.white),)),
                new Material(
                  borderRadius:  BorderRadius.circular(30.0),
                  child: new RaisedButton(
                    onPressed: () {
                      if(_usernameController.text.length>0&&_passwordController.text.length>0)
                      Navigator.pop(context);
                    },
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80.0),
            new Container(
              child: new Center(
                child: new FlatButton(
                    onPressed: (){
                    },
                    child: new Text('have no account?',style: TextStyle(color: Colors.white),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

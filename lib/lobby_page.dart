import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Loby_page extends StatelessWidget {
  get appAuth => null;

  @override
  Widget build(BuildContext context) => new Scaffold(
    appBar: new AppBar(
      title: new Text('Home'),
    ),
    body: new Container(
      margin: new EdgeInsets.only(
          top: 50.0
      ),
      alignment: Alignment.center,
      child: new Column(
        children: <Widget>[
          new Text('Welcome to App!'),
          new FlatButton(
              child: new Text(
                  'Logout'
              ),
              onPressed: () {
                appAuth.logout().then(
                        (_) => Navigator.of(context).pushReplacementNamed('/login')
                );
              }
          )
        ],
      ),
    ),
  );
}
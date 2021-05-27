import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var listTxt = ['b1', 'b2', 'b3'];
  var _listIdx = 0;

  void _whenPressButton() {
    setState(() {
      _listIdx += 1;
      _listIdx = _listIdx % 3;
    });

    print(_listIdx);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('Title')),
      body: Column(
        children: <Widget>[
          Question(listTxt[_listIdx]),
          RaisedButton(
            child: Text('b1'),
            onPressed: _whenPressButton,
          ),
          RaisedButton(
            child: Text('b2'),
            onPressed: () {
              print('Hello there');
            },
          ),
        ],
      ),
    ));
  }
}

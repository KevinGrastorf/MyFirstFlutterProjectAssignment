import 'package:flutter/material.dart';

import './textcontrol.dart';
import './textoutput.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _textIndex = 0;
  var _text = [
    'This is the first text',
    'This is the second. See the difference?'
  ];
  void _changeText() {
    setState(() {
      if (_textIndex == 0) {
        _textIndex += 1;
      } else {
        _textIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Assignment'),
        ),
        body: Container(
          color: Colors.grey[800],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextOutput(_text, _textIndex),
              TextControl(
                _changeText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

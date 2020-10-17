import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final changeText;

  TextControl(this.changeText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Divider(
          height: 50,
        ),
        RaisedButton(
          padding: EdgeInsets.all(50),
          child: Text(
            'Change Text',
            style: TextStyle(fontSize: 30, color: Colors.white, shadows: [
              Shadow(
                  // bottomLeft
                  offset: Offset(-1, -1),
                  color: Colors.grey[600]),
              Shadow(
                  // bottomRight
                  offset: Offset(1, -1),
                  color: Colors.grey[600]),
              Shadow(
                  // topRight
                  offset: Offset(1, 1),
                  color: Colors.grey[600]),
              Shadow(
                  // topLeft
                  offset: Offset(-1, 1),
                  color: Colors.grey[600]),
            ]),
          ),
          onPressed: changeText,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: Colors.blue[700], width: 7),
          ),
          color: Colors.orange[700],
        ),
      ],
    );
  }
}

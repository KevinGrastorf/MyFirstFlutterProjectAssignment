import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final text;
  final textIndex;

  TextOutput(this.text, this.textIndex);

  @override
  Widget build(BuildContext context) {
    return Text(
      text[textIndex],
      style: TextStyle(
        fontSize: 30,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    );
  }
}

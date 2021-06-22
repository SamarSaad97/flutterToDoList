import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String queText;
  // ignore: sort_constructors_first
  const Question(this.queText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        queText,
        style: TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}

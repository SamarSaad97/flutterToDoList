import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final Function handleRestart;
  Result(this.total,this.handleRestart);

  String get scorePhrase {
    String phrase;
    if (total <= 8) {
      phrase = 'You are innocent';
    } else if (total <= 12) {
      phrase = 'You are okay';
    } else if (total <= 16) {
      phrase = 'You are .... strange?';
    } else {
      phrase = 'You are so bad!!';
    }
    return phrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            scorePhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed:()=> handleRestart(),
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}

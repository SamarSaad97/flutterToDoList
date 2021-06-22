import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Function AnswerHandeler;
  final String MyText;
  // ignore: sort_constructors_first
  const Answer(this.AnswerHandeler,this.MyText);
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      
      child: RaisedButton(
        onPressed:  ()=>AnswerHandeler(),
        textColor: Colors.white,
      
        color: Colors.lightBlue,
        child: Text(MyText),
      ),
    );
  }
}

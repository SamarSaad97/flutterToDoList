import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQue;
  final int queIndex;
  final List<Map<String, Object>> QuestionsList;
  Quiz(this.QuestionsList, this.answerQue, this.queIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(QuestionsList[queIndex]['questionText'].toString()),
        // ignore: cast_nullable_to_non_nullable
        ...(QuestionsList[queIndex]['answers'] as List<Map<String, Object>>)
            .map((Map<String, Object> answer) {
          return Answer(
              () => answerQue(answer['score']), answer['text'].toString());
        })
      ],
    );
  }
}

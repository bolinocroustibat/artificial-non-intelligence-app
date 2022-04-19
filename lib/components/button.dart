import 'package:flutter/material.dart';

import '../models/answer.dart';
import '../services/answers.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      required this.buttonText,
      required this.answerChoice,
      required this.sendAnswer})
      : super(key: key);
  final String buttonText;
  final int answerChoice;
  final Function sendAnswer;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: const Color(0xff668ad8),
    );

    return TextButton(
      style: buttonStyle,
      onPressed: () => sendAnswer(answerChoice),
      child: Text(buttonText),
    );
  }
}

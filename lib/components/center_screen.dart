import 'package:flutter/material.dart';

import '../models/question.dart';
import '../services/answers.dart';
import '../services/questions.dart';
import '../services/sessions.dart';

class CenterScreenWidget extends StatefulWidget {
  const CenterScreenWidget({Key? key}) : super(key: key);

  @override
  State<CenterScreenWidget> createState() => _CenterScreenWidgetState();
}

class _CenterScreenWidgetState extends State<CenterScreenWidget> {
  String? sessionUid;
  Question? question;
  int lives = 3;

  @override
  void initState() async {
    sessionUid = await getSession();
    question = await getQuestion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: const [Text("ZOB"), Text("ZOB2")],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CenterScreenWidget extends StatefulWidget {
  const CenterScreenWidget(
      {Key? key, required this.lives, this.correct, this.score, this.topScore})
      : super(key: key);
  final int lives;
  final int? correct;
  final int? score;
  final int? topScore;

  @override
  State<CenterScreenWidget> createState() => _CenterScreenWidgetState();
}

class _CenterScreenWidgetState extends State<CenterScreenWidget> {
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

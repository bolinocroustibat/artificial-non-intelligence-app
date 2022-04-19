import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.buttonText}) : super(key: key);
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: const Color(0xff668ad8),
    );

    return TextButton(
      style: buttonStyle,
      onPressed: () {},
      child: Text(buttonText),
    );
  }
}

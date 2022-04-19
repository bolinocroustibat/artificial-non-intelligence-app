import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: const Color(0xff668ad8),
    );

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            style: buttonStyle,
            onPressed: () {},
            child: const Text("I think it's\nAI-GENERATED"),
          ),
          // const SizedBox(height: 80),
          TextButton(
            style: buttonStyle,
            onPressed: () {},
            child: const Text("I think it's\nHUMAN-GENERATED"),
          ),
        ],
      ),
    );
  }
}

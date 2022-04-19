import 'package:flutter/material.dart';

import 'components/button.dart';
import 'components/center_screen.dart';

void main() {
  runApp(const ArtificialNonIntelligenceApp());
}

class ArtificialNonIntelligenceApp extends StatelessWidget {
  const ArtificialNonIntelligenceApp({Key? key}) : super(key: key);

  static const String _title = 'Artificial Non Intelligence';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ButtonWidget(buttonText: "I think it's\nAI-GENERATED"),
            CenterScreenWidget(),
            ButtonWidget(buttonText: "I think it's\nHUMAN-GENERATED"),
          ],
        ),
      ),
    );
  }
}

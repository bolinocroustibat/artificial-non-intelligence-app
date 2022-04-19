import 'package:flutter/material.dart';

import 'screens/main_screen.dart';

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
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MainScreenWidget(),
      ),
    );
  }
}

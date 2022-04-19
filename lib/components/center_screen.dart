import 'package:flutter/material.dart';

class CenterScreenWidget extends StatefulWidget {
  const CenterScreenWidget({Key? key}) : super(key: key);

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

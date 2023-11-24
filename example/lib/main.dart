import 'package:flutter/material.dart';
import 'package:indicator_button/indicator_button.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IndicatorButtonShow(),
    );
  }
}

class IndicatorButtonShow extends StatelessWidget {
  const IndicatorButtonShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indicator Example"),
        actions: [
          IndicatorButton(
            showIndicator: true,
            indicator: Container(
              color: Colors.amber,
              width: 5,
              height: 2,
            ),
            child: const Text('Home'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter/material.dart';
import 'package:indicator_button/indicator_button.dart';

void main() {
  group(
    'test on IndicatorButton',
    () {
      testWidgets(
        'adds one to input values',
        (tester) async {
          IndicatorButton button = IndicatorButton(
            showIndicator: true,
            indicator: Container(height: 10, color: Colors.amber),
            child: const Text("Home"),
          );

          Widget myApp = MaterialApp(
            theme: ThemeData(useMaterial3: true),
            title: 'Test IndicatorButton',
            home: Scaffold(
              appBar: AppBar(
                title: const Text('IndicatorButton test'),
                actions: [
                  Center(child: button),
                ],
              ),
            ),
          );

          await tester.pumpWidget(myApp);

          var text = find.text('IndicatorButton test');
          expect(text, findsOneWidget);
        },
      );
    },
  );
}

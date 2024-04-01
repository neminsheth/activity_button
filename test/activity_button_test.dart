import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:activity_button/activity_button.dart';

void main() {
  testWidgets('ActivityButton widget test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: ActivityButton(
            title: 'Test Title',
            imagePath: 'assets/images/test_image.png',
            onTap: () {},
            widthRatio: 1.0,
            heightRatio: 1.0,
          ),
        ),
      ),
    );

    expect(find.text('Test Title'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
  });
}

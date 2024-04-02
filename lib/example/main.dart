import 'package:activity_button/activity_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Marking MyApp constructor invocation as const
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Adding const constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example App'),
        ),
        body: Center(
          child: ActivityButton(
            key: UniqueKey(), // Adding a unique key parameter
            title: 'Sample Activity',
            imagePath: 'assets/images/test_image.png',
            onTap: () {
              // Handle button tap event
            },
            widthRatio: 1.0,
            heightRatio: 1.0,
          ),
        ),
      ),
    );
  }
}

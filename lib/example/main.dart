import 'package:activity_button/activity_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example App'),
        ),
        body: Center(
          child: ActivityButton(
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

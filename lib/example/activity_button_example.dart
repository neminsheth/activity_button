import 'package:flutter/material.dart';

import '../activity_button.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double widthRatio = size.width / 390.0; // Assuming original width is 390.0
    final double heightRatio = size.height / 900.0; // Assuming original height is 900.0

    return Scaffold(
      appBar: AppBar(
        title: Text('Activity Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Test Packages App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ActivityButton(
              title: 'Sample Activity',
              imagePath: 'assets/images/test_image.png',
              onTap: () {
              },
              widthRatio: widthRatio,
              heightRatio: heightRatio,
            ),
            // Add more ActivityButton widgets as needed
          ],
        ),
      ),
    );
  }
}

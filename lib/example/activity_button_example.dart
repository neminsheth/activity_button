import 'package:flutter/material.dart';

import '../activity_button.dart';

/// Example page demonstrating the usage of the ActivityButton widget.
class ExamplePage extends StatelessWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double widthRatio =
        size.width / 390.0; // Assuming original width is 390.0
    final double heightRatio =
        size.height / 900.0; // Assuming original height is 900.0

    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Test Packages App!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ActivityButton(
              title: 'Sample Activity',
              imagePath: 'assets/images/test_image.png',
              onTap: () {
                // Handle button tap event
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

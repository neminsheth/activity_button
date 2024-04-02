import 'dart:ui';

import 'package:flutter/material.dart';

/// A widget representing an activity button with an image and text.
///
/// This widget can be used to display an activity with an image and text below it.
class ActivityButton extends StatelessWidget {
  /// The title text displayed below the image.
  final String title;

  /// The path to the image asset used in this button.
  final String imagePath;

  // The callback function called when the button is tapped.
  final Function() onTap;

  /// The width ratio used to adjust the size of the button.
  final double widthRatio;

  /// The height ratio used to adjust the size of the button.
  final double heightRatio;

  /// Creates a new [ActivityButton] widget.
  ///
  /// The [title] is the text displayed below the image.
  /// The [imagePath] is the path to the image asset.
  /// The [onTap] is the callback function called when the button is tapped.
  /// The [widthRatio] and [heightRatio] are used to adjust the size of the button.
  const ActivityButton({
    required this.title,
    required this.imagePath,
    required this.onTap,
    required this.widthRatio,
    required this.heightRatio,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 105 * widthRatio,
            height: 140 * heightRatio,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  color: Colors.white.withOpacity(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      Expanded(
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 1), // Added 1 pixel separator
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Poppins',

                          ///The font used here is the poppins font, user can change it according to them.
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

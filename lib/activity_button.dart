import 'dart:ui';

import 'package:flutter/material.dart';

class ActivityButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final Function() onTap;
  final double widthRatio;
  final double heightRatio;

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
                      const SizedBox(height: 5),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: 'Poppins',
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

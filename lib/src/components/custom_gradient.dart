import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CustomGradient extends StatelessWidget {
  final String text;
  const CustomGradient({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return          Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GradientText(
        text,
        textScaleFactor: 1.1,
        style: TextStyle(
          fontSize: 36.0,
          fontWeight: FontWeight.bold,
        ),
        gradientType: GradientType.linear,
        gradientDirection: GradientDirection.ttb,
        colors: [
          Color(0xff991F7A),
          Color(0xFFEB6B9F),
        ],
      ),
    );

  }
}

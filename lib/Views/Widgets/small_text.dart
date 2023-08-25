import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    super.key,
    required this.text,
    required this.fontSize,
  });
  final String text;
  final double fontSize;
  // final
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        // fontWeight: FontWeight.bold,
        letterSpacing: 0.9,
        height: 1.5,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  const SmallText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.color,
  });
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
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
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

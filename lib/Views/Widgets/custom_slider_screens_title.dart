import 'package:flutter/material.dart';

class CustomSliderScreenTitleText extends StatelessWidget {
  const CustomSliderScreenTitleText({
    super.key,
    required this.text,
    this.fontSize,
  });

  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10.0),
      child: Text(
        text.toString(),
        style: TextStyle(
          fontSize: fontSize == null ? 30 : fontSize,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.9,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomSliderScreenTitleText extends StatelessWidget {
  const CustomSliderScreenTitleText({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10.0),
      child: Text(
        text.toString(),
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.9,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SliderSkipText extends StatelessWidget {
  const SliderSkipText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Skip',
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.9,
      ),
    );
  }
}

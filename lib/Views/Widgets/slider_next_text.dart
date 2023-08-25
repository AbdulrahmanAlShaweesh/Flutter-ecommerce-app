import 'package:flutter/material.dart';

class SliderNextText extends StatelessWidget {
  const SliderNextText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Next',
      style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.9,
      ),
    );
  }
}

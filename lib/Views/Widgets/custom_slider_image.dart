import 'package:flutter/material.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}

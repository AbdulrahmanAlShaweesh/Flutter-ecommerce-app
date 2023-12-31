import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';
import 'package:flutter_ecommerce_app/constant/app_colors.dart';

class CustomIsHasAccount extends StatelessWidget {
  const CustomIsHasAccount({
    super.key,
    required this.text1,
    required this.text2,
    required this.onTap,
  });

  final String text1;
  final String text2;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SmallText(text: text1, fontSize: 16.0),
        GestureDetector(
          onTap: onTap,
          child: SmallText(
            text: text2,
            fontSize: 18.0,
            color: AppColors.buttonColors,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

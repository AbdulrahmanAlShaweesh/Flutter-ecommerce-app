import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';
import 'package:flutter_ecommerce_app/constant/app_colors.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    super.key,
    required this.buttonText,
  });
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 45,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.buttonColors,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SmallText(
        text: buttonText,
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

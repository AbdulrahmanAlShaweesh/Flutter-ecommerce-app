import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';
import 'package:flutter_ecommerce_app/Views/login_screen.dart';
import 'package:flutter_ecommerce_app/constant/app_colors.dart';

class CustomIsHasAccount extends StatelessWidget {
  const CustomIsHasAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SmallText(text: 'Already have an account? ', fontSize: 16.0),
        GestureDetector(
          onTap: () {
            Navigator.pushReplacementNamed(context, LoginScreen.id);
          },
          child: const SmallText(
            text: 'Login',
            fontSize: 18.0,
            color: AppColors.buttonColors,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

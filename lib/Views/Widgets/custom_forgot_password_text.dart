import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';

class CustomForgotPasswordText extends StatelessWidget {
  const CustomForgotPasswordText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: SizedBox.shrink(),
        ),
        SmallText(
          text: 'Forgot Password?',
          fontSize: 16.0,
          // color: Color.fromARGB(255, 113, 92, 92),
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}

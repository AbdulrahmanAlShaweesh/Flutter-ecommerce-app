import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Screens/login_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/signup_screen.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_app_button.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_image.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_screens_title.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_user_have_account.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';

class WelcomeScreenView extends StatelessWidget {
  const WelcomeScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SliderImage(imageUrl: 'assets/AppImags/appLogo.png'),
        const SizedBox(
          height: 30.0,
        ),
        const CustomSliderScreenTitleText(text: 'Welcome Back!'),
        const SizedBox(
          height: 10.0,
        ),
        const Column(
          children: [
            SmallText(
              text: 'Ready to shart shopping Sign Up',
              fontSize: 18.0,
            ),
            SmallText(
              text: 'to get started.',
              fontSize: 18.0,
            ),
          ],
        ),
        const SizedBox(
          height: 140.0,
        ),
        CustomAppButton(
          buttonText: 'Sign Up',
          onTap: () {
            Navigator.pushReplacementNamed(context, SignUpScreen.id);
          },
        ),
        const SizedBox(
          height: 10.0,
        ),
        CustomIsHasAccount(
          text1: 'Already have an account? ',
          text2: 'Login',
          onTap: () {
            Navigator.pushReplacementNamed(context, LoginScreen.id);
          },
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_app_button.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_image.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_screens_title.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_user_have_account.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static String id = 'welcome screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SliderImage(imageUrl: 'assets/AppImags/appLogo.png'),
            SizedBox(
              height: 30.0,
            ),
            CustomSliderScreenTitleText(text: 'Welcome Back!'),
            SizedBox(
              height: 10.0,
            ),
            Column(
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
            SizedBox(
              height: 140.0,
            ),
            CustomAppButton(
              buttonText: 'Sign Up',
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomIsHasAccount()
          ],
        ),
      ),
    );
  }
}

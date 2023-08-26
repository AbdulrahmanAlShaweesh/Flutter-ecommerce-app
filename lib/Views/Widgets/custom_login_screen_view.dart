import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Screens/signuo_screen.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_app_button.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_auth_accounts.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_forgot_password_text.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_screens_title.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_text_form_field.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_user_have_account.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';

class LoginScreenView extends StatelessWidget {
  const LoginScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomSliderScreenTitleText(
          text: 'Login to your account',
          fontSize: 22.0,
        ),
        const SizedBox(
          height: 80.0,
        ),
        const CustomTextFormField(
          hintText: 'Emial Address',
          icons: Icons.email,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const CustomTextFormField(
          hintText: 'Enter your emial',
          icons: Icons.lock,
        ),
        const SizedBox(
          height: 5.0,
        ),
        const CustomForgotPasswordText(),
        const SizedBox(
          height: 15.0,
        ),
        const CustomAppButton(buttonText: 'Login'),
        const SizedBox(
          height: 35.0,
        ),
        const SmallText(
          text: 'or continue with',
          fontSize: 16.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        const CustomAuthonticationAvilableAccounts(),
        const SizedBox(
          height: 60.0,
        ),
        CustomIsHasAccount(
          text1: 'Don\'t have an account? ',
          text2: 'Create',
          screenName: SignUpScreen.id,
        )
      ],
    );
  }
}

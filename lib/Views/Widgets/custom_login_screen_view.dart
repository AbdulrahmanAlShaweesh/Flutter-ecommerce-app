import 'package:flutter/material.dart';
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
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSliderScreenTitleText(
          text: 'Login to your account',
          fontSize: 22.0,
        ),
        SizedBox(
          height: 80.0,
        ),
        CustomTextFormField(
          hintText: 'Emial Address',
          icons: Icons.email,
        ),
        SizedBox(
          height: 20.0,
        ),
        CustomTextFormField(
          hintText: 'Enter your emial',
          icons: Icons.lock,
        ),
        SizedBox(
          height: 5.0,
        ),
        CustomForgotPasswordText(),
        SizedBox(
          height: 15.0,
        ),
        CustomAppButton(buttonText: 'Login'),
        SizedBox(
          height: 35.0,
        ),
        SmallText(
          text: 'or continue with',
          fontSize: 16.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        CustomAuthonticationAvilableAccounts(),
        SizedBox(
          height: 60.0,
        ),
        CustomIsHasAccount(
          text1: 'Don\'t have an account? ',
          text2: 'Create',
        )
      ],
    );
  }
}

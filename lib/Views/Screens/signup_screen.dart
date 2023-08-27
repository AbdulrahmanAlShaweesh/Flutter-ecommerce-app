import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Screens/login_screen.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_app_button.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_screens_title.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_text_form_field.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_user_have_account.dart';
import 'package:flutter_ecommerce_app/Views/widgets/custom_term_of_use.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static String id = 'signUp screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0,
          ),
          child: Column(
            children: [
              const CustomSliderScreenTitleText(
                text: 'Create your new account',
                fontSize: 22,
              ),
              const SizedBox(
                height: 70.0,
              ),
              const CustomTextFormField(
                hintText: 'Full name',
                icons: Icons.person_outline,
              ),
              const SizedBox(
                height: 25.0,
              ),
              const CustomTextFormField(
                hintText: 'emial address',
                icons: Icons.email,
              ),
              const SizedBox(
                height: 25.0,
              ),
              const CustomTextFormField(
                hintText: 'password',
                icons: Icons.lock,
              ),
              const SizedBox(
                height: 25.0,
              ),
              const CustomTextFormField(
                hintText: 'confirm password',
                icons: Icons.lock,
              ),
              const SizedBox(
                height: 12.0,
              ),
              const CustomTermOfUse(),
              const SizedBox(
                height: 40.0,
              ),
              const CustomAppButton(buttonText: 'Sign Up'),
              const SizedBox(
                height: 30.0,
              ),
              CustomIsHasAccount(
                text1: 'Already have an account? ',
                text2: 'Login',
                onTap: () {
                  Navigator.popAndPushNamed(context, LoginScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

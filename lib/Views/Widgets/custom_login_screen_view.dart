// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Cubits/hidden_password/hiden_or_show_password_cubit.dart';
import 'package:flutter_ecommerce_app/Cubits/login_cubit/login_emial_password_auth_cubit.dart';
import 'package:flutter_ecommerce_app/Views/Screens/signup_screen.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_app_button.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_auth_accounts.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_forgot_password_text.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_screens_title.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_text_form_field.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_user_have_account.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';

class LoginScreenView extends StatelessWidget {
  LoginScreenView({
    super.key,
  });

  TextEditingController emialController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomSliderScreenTitleText(
            text: 'Login to your account',
            fontSize: 22.0,
          ),
          const SizedBox(
            height: 80.0,
          ),
          CustomTextFormField(
            controller: emialController,
            hintText: 'Emial Address',
            icons: Icons.email,
            validation: (data) {
              if (data!.isEmpty) {
                return 'Field is required';
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 30.0,
          ),
          BlocBuilder<HidenOrShowPasswordCubit, HidenOrShowPasswordState>(
            builder: (context, state) {
              var isShowPassword =
                  BlocProvider.of<HidenOrShowPasswordCubit>(context);

              return CustomTextFormField(
                controller: passwordController,
                validation: (data) {
                  if (data!.isEmpty) {
                    return 'Field is required';
                  } else {
                    return null;
                  }
                },
                obscureText:
                    isShowPassword.showLoginScreenPassword ? false : true,
                hintText: 'Enter your password',
                icons: Icons.lock,
                onTap: () {
                  isShowPassword.isShowBassword(screenName: 'login');
                },
                icon: isShowPassword.showLoginScreenPassword
                    ? Icons.visibility
                    : Icons.visibility_off,
              );
            },
          ),
          const SizedBox(
            height: 5.0,
          ),
          const CustomForgotPasswordText(),
          const SizedBox(
            height: 15.0,
          ),
          CustomAppButton(
            buttonText: 'Login',
            onTap: () {
              if (formKey.currentState!.validate()) {
                BlocProvider.of<LoginEmialPasswordAuthCubit>(context)
                    .logintoAccount(
                  emial: emialController.text.trim(),
                  password: passwordController.text.trim(),
                );
              }
            },
          ),
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
            onTap: () {
              // Navigator.pushReplacementNamed(context, SignUpScreen.id)),
              Navigator.pushReplacementNamed(context, SignUpScreen.id);
            },
          )
        ],
      ),
    );
  }
}

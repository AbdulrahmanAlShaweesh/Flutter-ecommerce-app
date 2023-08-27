import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Cubits/hidden_password/hiden_or_show_password_cubit.dart';
import 'package:flutter_ecommerce_app/Views/Screens/login_screen.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_app_button.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_screens_title.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_text_form_field.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_user_have_account.dart';
import 'package:flutter_ecommerce_app/Views/widgets/custom_term_of_use.dart';

class SignUpScreenView extends StatelessWidget {
  const SignUpScreenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        BlocBuilder<HidenOrShowPasswordCubit, HidenOrShowPasswordState>(
          builder: (context, state) {
            var isShowPassword =
                BlocProvider.of<HidenOrShowPasswordCubit>(context);
            return CustomTextFormField(
              hintText: 'password',
              icons: Icons.lock,
              onTap: () {
                isShowPassword.isShowBassword(screenName: 'signup');
              },
              icon: isShowPassword.showSignUpScreenPassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              obscureText:
                  isShowPassword.showSignUpScreenPassword ? false : true,
            );
          },
        ),
        const SizedBox(
          height: 25.0,
        ),
        BlocBuilder<HidenOrShowPasswordCubit, HidenOrShowPasswordState>(
          builder: (context, state) {
            var isShowBassword =
                BlocProvider.of<HidenOrShowPasswordCubit>(context);
            return CustomTextFormField(
              hintText: 'confirm password',
              icons: Icons.lock,
              onTap: () {
                isShowBassword.isShowBassword(screenName: 'confirm');
              },
              icon: isShowBassword.showconfirmPassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              obscureText: isShowBassword.showconfirmPassword ? false : true,
            );
          },
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
    );
  }
}

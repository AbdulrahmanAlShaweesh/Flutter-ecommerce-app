import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Cubits/hidden_password/hiden_or_show_password_cubit.dart';
import 'package:flutter_ecommerce_app/Cubits/login_cubit/login_emial_password_auth_cubit.dart';
import 'package:flutter_ecommerce_app/Views/Screens/button_nav_bar.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_login_screen_view.dart';
import 'package:flutter_ecommerce_app/Views/widgets/custom_show_snak_bar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String id = 'login screen';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginEmialPasswordAuthCubit,
        LoginEmialPasswordAuthState>(
      listener: (context, state) {
        if (state is LoginFilureState) {
          CustomShowSnakBarError(
            errorMessage: state.errorMessage,
            context: context,
          );
        } else if (state is LoginSucessState) {
          Navigator.pushNamed(context, BottonNavBar.id);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall:
              BlocProvider.of<LoginEmialPasswordAuthCubit>(context).isLoading,
          child: Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: BlocProvider(
                  create: (context) => HidenOrShowPasswordCubit(),
                  child: LoginScreenView(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

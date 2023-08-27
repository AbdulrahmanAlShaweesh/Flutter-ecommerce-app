import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Cubits/cubit/hiden_or_show_password_cubit.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_login_screen_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String id = 'login screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: BlocProvider(
            create: (context) => HidenOrShowPasswordCubit(),
            child: const LoginScreenView(),
          ),
        ),
      ),
    );
  }
}

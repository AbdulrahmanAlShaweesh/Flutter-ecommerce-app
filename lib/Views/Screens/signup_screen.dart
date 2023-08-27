import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/widgets/singup_screen_view.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static String id = 'signUp screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 50.0,
          ),
          child: SignUpScreenView(),
        ),
      ),
    );
  }
}

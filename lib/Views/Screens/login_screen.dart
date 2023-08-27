import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_login_screen_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String id = 'login screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: LoginScreenView(),
        ),
      ),
    );
  }
}

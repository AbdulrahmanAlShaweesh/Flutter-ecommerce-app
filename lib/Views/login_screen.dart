import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static String id = 'login screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [Text('Login SCREEN')],
      ),
    );
  }
}

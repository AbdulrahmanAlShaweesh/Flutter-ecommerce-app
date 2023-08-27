import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/widgets/wecome_Screen_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});
  static String id = 'welcome screen';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 25.0,
          right: 25.0,
        ),
        child: WelcomeScreenView(),
      ),
    );
  }
}

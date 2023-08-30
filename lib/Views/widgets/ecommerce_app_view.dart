import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Screens/button_nav_bar.dart';
import 'package:flutter_ecommerce_app/Views/Screens/home_Screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/intro_slider_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/login_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/signup_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/welcome_screen.dart';
import 'package:flutter_ecommerce_app/constant/app_colors.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        iconTheme: const IconThemeData(
          color: AppColors.iconColor,
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: AppColors.buttonColors,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        IntroSliderScreen.id: (context) => const IntroSliderScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignUpScreen.id: (context) => const SignUpScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        BottonNavBar.id: (context) => const BottonNavBar()
      },
      initialRoute: IntroSliderScreen.id,
    );
  }
}

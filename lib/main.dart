// ignore_for_file: prefer_const_constructors, unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Screens/intro_slider_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/login_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/signup_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/welcome_screen.dart';
import 'package:flutter_ecommerce_app/constant/app_colors.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const EcommerceApp(),
  );
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        iconTheme: IconThemeData(
          color: AppColors.iconColor,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: AppColors.buttonColors,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        IntroSliderScreen.id: (context) => IntroSliderScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
      },
      initialRoute: IntroSliderScreen.id,
    );
  }
}

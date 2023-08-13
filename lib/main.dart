// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Constants/colors.dart';
import 'package:flutter_ecommerce_app/Features/cubit/app_auth_cubit.dart';
import 'package:flutter_ecommerce_app/Features/cubit/login_hidden_password_cubit.dart';
import 'package:flutter_ecommerce_app/Views/cart_screen.dart';
import 'package:flutter_ecommerce_app/Views/catigories_screen.dart';
import 'package:flutter_ecommerce_app/Views/chat_screen.dart';
import 'package:flutter_ecommerce_app/Views/home_screen.dart';
import 'package:flutter_ecommerce_app/Views/login_Screen.dart';
import 'package:flutter_ecommerce_app/Views/register_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    EcommerceApp(),
  );
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppAuthCubit(),
        ),
        BlocProvider(
          create: (context) => LoginHiddenPasswordCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          // brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.red,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          RegisterScreen.id: (context) => RegisterScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          ProductsHomeScreen.id: (context) => ProductsHomeScreen(),
          ChatScreen.id: (context) => ChatScreen(),
          CatigoriesScreen.id: (context) => CatigoriesScreen(),
          CartScreen.id: (context) => CartScreen(),
        },
        home: RegisterScreen(),
      ),
    );
  }
}

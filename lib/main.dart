// ignore_for_file: prefer_const_constructors, unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Cubits/login_cubit/login_emial_password_auth_cubit.dart';
import 'package:flutter_ecommerce_app/Cubits/signup_cubit/signup_with_emial_and_password_cubit.dart';
import 'package:flutter_ecommerce_app/Views/Screens/botton_nav_bar.dart';
import 'package:flutter_ecommerce_app/Views/Screens/intro_slider_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/login_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/signup_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/welcome_screen.dart';
import 'package:flutter_ecommerce_app/Views/simple_bloc_observer.dart';
import 'package:flutter_ecommerce_app/Views/widgets/ecommerce_app_view.dart';
import 'package:flutter_ecommerce_app/constant/app_colors.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginEmialPasswordAuthCubit()),
        BlocProvider(create: (context) => SignupWithEmialAndPasswordCubit())
      ],
      child: const EcommerceApp(),
    ),
  );
}

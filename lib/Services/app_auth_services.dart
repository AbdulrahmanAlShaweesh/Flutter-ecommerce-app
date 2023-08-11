// ignore_for_file: unused_import, avoid_print, unused_catch_clause, empty_catches, use_build_context_synchronously, body_might_complete_normally_nullable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/home_screen.dart';
import 'package:flutter_ecommerce_app/Views/login_Screen.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/snap_bar_error.dart';

class Auths {
  static Future<User?> signUpAccount(
      {required emial,
      required password,
      required BuildContext context}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emial,
        password: password,
      );
      showSnakBarErrorMeggase(
          context: context, errorMessage: 'User Created Success');
      Navigator.pushNamed(context, LoginScreen.id);
    } on FirebaseAuthException catch (err) {
      if (err.code == 'weak-password') {
        showSnakBarErrorMeggase(
          context: context,
          errorMessage: 'The password provided is too weak.',
        );
      } else if (err.code == 'email-already-in-use') {
        showSnakBarErrorMeggase(
          context: context,
          errorMessage: 'The account already exists for that email.',
        );
      }
    } catch (err) {
      showSnakBarErrorMeggase(
        context: context,
        errorMessage: 'something went wrong.',
      );
    }
  }

  // login to user account
  static Future<void> loginAccount({
    required emial,
    required password,
    required BuildContext context,
  }) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emial,
        password: password,
      );
      showSnakBarErrorMeggase(context: context, errorMessage: 'login...');
      Navigator.pushReplacementNamed(context, ProductsHomeScreen.id);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showSnakBarErrorMeggase(
            context: context, errorMessage: 'No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showSnakBarErrorMeggase(
            context: context,
            errorMessage: 'Wrong password provided for that user.');
      }
    } catch (err) {
      showSnakBarErrorMeggase(
          context: context, errorMessage: 'something went wrrong');
    }
  }

  // logout or exit the account.
  static Future<void> exitApp() async {
    await FirebaseAuth.instance
        .signOut()
        .then(
          (value) => print('exit app'),
        )
        .catchError(print);
  }
}

// ignore_for_file: unused_import, avoid_print

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auths {
  Future<void> signUpAccount(
      {required emial,
      required password,
      required BuildContext context}) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emial,
      password: password,
    );
  }

  // login to user account
  loginAccount() {}

  // logout or exit the account.
  Future<void> exitApp() async {
    await FirebaseAuth.instance
        .signOut()
        .then((value) => log('exit app'))
        .catchError(print);
  }
}

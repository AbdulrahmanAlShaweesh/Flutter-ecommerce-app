// ignore_for_file: depend_on_referenced_packages, unused_catch_clause, empty_catches

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part 'app_auth_state.dart';

class AppAuthCubit extends Cubit<AppAuthState> {
  AppAuthCubit() : super(AppAuthInitial());

  Future<void> logninToAccount({
    required String email,
    required String password,
  }) async {
    emit(
      LoginLoadingState(),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(
        LoginSucessState(),
      );
    } on FirebaseAuthException catch (error) {
      emit(
        LoginErrorState(errorMessage: error.code),
      );
    }
  }

  // cubit to create a new user in the databse.
  Future<void> createNewAccount(
      {required String email, required String password}) async {
    emit(
      RegisterLoadingState(),
    );
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(
        RegisterSucesState(),
      );
    } on FirebaseAuthException catch (error) {
      emit(
        RegisterErrorState(
          errorMessage: error.code,
        ),
      );
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_ecommerce_app/Cubits/signup_cubit/signup_with_emial_and_password_cubit.dart';
import 'package:meta/meta.dart';

part 'login_emial_password_auth_state.dart';

class LoginEmialPasswordAuthCubit extends Cubit<LoginEmialPasswordAuthState> {
  LoginEmialPasswordAuthCubit() : super(LoginEmialPasswordAuthInitial());

  bool isLoading = false;
  logintoAccount({required String emial, required String password}) async {
    isLoading = true;
    emit(LoginLoadingState());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emial,
        password: password,
      );
      emit(LoginSucessState());
      isLoading = false;
    } on FirebaseException catch (err) {
      emit(LoginFilureState(errorMessage: err.code));
      isLoading = false;
    }
  }
}

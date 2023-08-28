import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signup_with_emial_and_password_state.dart';

class SignupWithEmialAndPasswordCubit
    extends Cubit<SignupWithEmialAndPasswordState> {
  SignupWithEmialAndPasswordCubit()
      : super(SignupWithEmialAndPasswordInitial());

  bool isLoading = false;

  Future<void> addNewUser(
      {required String email, required String password}) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    isLoading = true;
    emit(SignupLoadingState());
    try {
      isLoading = false;
    } on FirebaseAuthException catch (errorMessage) {
      emit(
        SignupFilureState(errorMessage: errorMessage.code),
      );
      isLoading = false;
    }
  }
}

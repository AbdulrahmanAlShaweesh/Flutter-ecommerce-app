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
    isLoading = true;
    emit(SignupLoadingState());
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(SignupSuccessState());
      isLoading = false;
    } on FirebaseAuthException catch (errorMessage) {
      emit(
        SignupFilureState(errorMessage: errorMessage.code),
      );
      isLoading = false;
    }
    isLoading = false;
  }
}

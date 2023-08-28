import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:meta/meta.dart';

part 'login_emial_password_auth_state.dart';

class LoginEmialPasswordAuthCubit extends Cubit<LoginEmialPasswordAuthState> {
  LoginEmialPasswordAuthCubit() : super(LoginEmialPasswordAuthInitial());

  logintoAccount({required String emial, required String password}) async {
    emit(LoginLoadingState());
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emial,
        password: password,
      );
    } on Exception catch (err) {
      emit(LoginFilureState(errorMessage: err.toString()));
    }
  }
}

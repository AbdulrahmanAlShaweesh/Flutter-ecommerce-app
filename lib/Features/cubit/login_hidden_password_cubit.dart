// ignore_for_file: depend_on_referenced_packages, unused_local_variable

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_hidden_password_state.dart';

class LoginHiddenPasswordCubit extends Cubit<HintPassword> {
  LoginHiddenPasswordCubit() : super(LoginHiddenPasswordInitial());
  bool isShowLoginPassword = true;
  bool isShowRegisterPassword = true;

  showPassword({required String screenName}) {
    if (screenName == 'Login') {
      isShowLoginPassword = !isShowLoginPassword;

      emit(
        ShowLoginPasswordState(isShowPassword: isShowLoginPassword),
      );
    } else {
      isShowRegisterPassword = !isShowRegisterPassword;

      emit(
        ShowRegisterPasswordState(),
      );
    }
  }
}

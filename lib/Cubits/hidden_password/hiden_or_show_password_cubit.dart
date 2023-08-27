import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'hiden_or_show_password_state.dart';

class HidenOrShowPasswordCubit extends Cubit<HidenOrShowPasswordState> {
  HidenOrShowPasswordCubit() : super(HidenOrShowPasswordInitial());
  bool showLoginScreenPassword = false;
  bool showSignUpScreenPassword = false;
  bool showconfirmPassword = false;
  isShowBassword({required String screenName}) {
    if (screenName == 'login') {
      showLoginScreenPassword = !showLoginScreenPassword;
      emit(
        ShowLoginScreenPasswordState(),
      );
    } else if (screenName == 'signup') {
      showSignUpScreenPassword = !showSignUpScreenPassword;
      emit(
        ShowSignUpScreenPasswordState(),
      );
    } else {
      showconfirmPassword = !showconfirmPassword;
      emit(
        ShowSignUpConfirmPasswordState(),
      );
    }
  }
}

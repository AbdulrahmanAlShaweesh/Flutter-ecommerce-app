import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'agree_to_term_state.dart';

class AgreeToTermCubit extends Cubit<AgreeToTermState> {
  AgreeToTermCubit() : super(AgreeToTermInitial());

  bool isUserAgreed = false;

  userAgree() {
    isUserAgreed = !isUserAgreed;
    emit(
      UserAgreedToTermUsed(),
    );
  }
}

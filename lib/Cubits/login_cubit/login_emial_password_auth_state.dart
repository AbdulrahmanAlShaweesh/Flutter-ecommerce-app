part of 'login_emial_password_auth_cubit.dart';

@immutable
sealed class LoginEmialPasswordAuthState {}

final class LoginEmialPasswordAuthInitial extends LoginEmialPasswordAuthState {}

final class LoginLoadingState extends LoginEmialPasswordAuthState {}

final class LoginSucessState extends LoginEmialPasswordAuthState {}

final class LoginFilureState extends LoginEmialPasswordAuthState {
  final String errorMessage;

  LoginFilureState({required this.errorMessage});
}

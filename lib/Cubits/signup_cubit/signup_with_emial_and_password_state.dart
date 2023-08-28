part of 'signup_with_emial_and_password_cubit.dart';

@immutable
sealed class SignupWithEmialAndPasswordState {}

final class SignupWithEmialAndPasswordInitial
    extends SignupWithEmialAndPasswordState {}

final class SignupLoadingState extends SignupWithEmialAndPasswordState {}

final class SignupFilureState extends SignupWithEmialAndPasswordState {
  final String errorMessage;

  SignupFilureState({required this.errorMessage});
}

final class SignupSuccessState extends SignupWithEmialAndPasswordState {}

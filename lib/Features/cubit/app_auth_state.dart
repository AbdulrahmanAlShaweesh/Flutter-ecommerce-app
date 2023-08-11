part of 'app_auth_cubit.dart';

@immutable
sealed class AppAuthState {}

final class AppAuthInitial extends AppAuthState {}

class LoginLoadingState extends AppAuthState {}

class LoginErrorState extends AppAuthState {
  final String errorMessage;
  LoginErrorState({required this.errorMessage});
}

class LoginSucessState extends AppAuthState {}

class RegisterLoadingState extends AppAuthState {}

class RegisterErrorState extends AppAuthState {
  final String errorMessage;

  RegisterErrorState({
    required this.errorMessage,
  });
}

class RegisterSucesState extends AppAuthState {}

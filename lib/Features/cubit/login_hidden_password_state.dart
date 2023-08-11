// ignore_for_file: must_be_immutable

part of 'login_hidden_password_cubit.dart';

@immutable
sealed class HintPassword {}

final class LoginHiddenPasswordInitial extends HintPassword {}

class ShowLoginPasswordState extends HintPassword {
  bool isShowPassword;

  ShowLoginPasswordState({required this.isShowPassword});
}

class ShowRegisterPasswordState extends HintPassword {}

// ignore_for_file: must_be_immutable

part of 'hiden_or_show_password_cubit.dart';

@immutable
sealed class HidenOrShowPasswordState {}

final class HidenOrShowPasswordInitial extends HidenOrShowPasswordState {}

final class ShowLoginScreenPasswordState extends HidenOrShowPasswordState {}

final class ShowSignUpScreenPasswordState extends HidenOrShowPasswordState {}

final class ShowSignUpConfirmPasswordState extends HidenOrShowPasswordState {}

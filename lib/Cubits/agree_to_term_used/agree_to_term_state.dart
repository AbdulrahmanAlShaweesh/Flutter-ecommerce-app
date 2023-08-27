part of 'agree_to_term_cubit.dart';

@immutable
sealed class AgreeToTermState {}

final class AgreeToTermInitial extends AgreeToTermState {}

final class UserAgreedToTermUsed extends AgreeToTermState {}

part of 'navigation_bar_cubit_cubit.dart';

@immutable
sealed class NavigationBarCubitState {}

final class NavigationBarCubitInitial extends NavigationBarCubitState {}

final class ChangeNavIcon extends NavigationBarCubitState {
  final int index;

  ChangeNavIcon({required this.index});
}

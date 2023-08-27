import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_bar_cubit_state.dart';

class NavigationBarCubitCubit extends Cubit<NavigationBarCubitState> {
  NavigationBarCubitCubit() : super(NavigationBarCubitInitial());

  int currentIndex = 0;

  changeNavBarIcon({required int selectedIndex}) {
    currentIndex = selectedIndex;
    emit(
      ChangeNavIcon(),
    );
  }
}

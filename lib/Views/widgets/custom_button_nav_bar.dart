import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Cubits/nav_bar/navigation_bar_cubit_cubit.dart';
import 'package:flutter_ecommerce_app/Views/widgets/custon_button_nave_bar_view.dart';

class CustoomBottonNavigationBar extends StatelessWidget {
  const CustoomBottonNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarCubitCubit, NavigationBarCubitState>(
      builder: (context, state) {
        var index = BlocProvider.of<NavigationBarCubitCubit>(context);
        return ButtonNavBarVeiw(index: index);
      },
    );
  }
}

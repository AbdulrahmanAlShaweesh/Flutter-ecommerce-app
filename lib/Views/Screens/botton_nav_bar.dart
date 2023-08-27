// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Cubits/nav_bar/navigation_bar_cubit_cubit.dart';
import 'package:flutter_ecommerce_app/Views/widgets/custom_button_nav_bar.dart';

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({super.key});
  static String id = 'botton nav bar';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBarCubitCubit(),
      child: const Scaffold(
        bottomNavigationBar: CustoomBottonNavigationBar(),
      ),
    );
  }
}

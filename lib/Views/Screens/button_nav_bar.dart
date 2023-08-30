// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Cubits/nav_bar/navigation_bar_cubit_cubit.dart';
import 'package:flutter_ecommerce_app/Views/Screens/caigory_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/cart_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/char_screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/drawer._screen.dart';
import 'package:flutter_ecommerce_app/Views/Screens/home_Screen.dart';
import 'package:flutter_ecommerce_app/constant/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({super.key});
  static String id = 'button nav';

  @override
  Widget build(BuildContext context) {
    final List<String> icons = [
      'assets/navigationbaricons/home.svg',
      'assets/navigationbaricons/category.svg',
      'assets/navigationbaricons/shopping-cart.svg',
      'assets/navigationbaricons/chat.svg',
      'assets/navigationbaricons/person.svg',
    ];
    List<String> labels = ['Home', 'Catigory', 'Cart', 'Message', 'Profile'];
    List<Widget> screens = [
      const HomeScreen(),
      const CatigoryScreen(),
      const CartScreen(),
      const MessageScreen(),
      const DrawerScreen(),
    ];
    return SafeArea(
      child: BlocBuilder<NavigationBarCubitCubit, NavigationBarCubitState>(
        builder: (context, state) {
          int cubit_index =
              BlocProvider.of<NavigationBarCubitCubit>(context).currentIndex;
          return Scaffold(
            body: screens[cubit_index],
            bottomNavigationBar: Container(
                margin: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  bottom: 10.0,
                ),
                decoration: BoxDecoration(
                    color: AppColors.buttonColors,
                    borderRadius: BorderRadius.circular(20.0)),
                alignment: Alignment.topLeft,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(icons.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        BlocProvider.of<NavigationBarCubitCubit>(context)
                            .changeNavBarIcon(
                          selectedIndex: index,
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            icons[index],
                            height: index == 4 ? 26 : 22,
                            colorFilter: ColorFilter.mode(
                              index == cubit_index
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          Text(
                            labels[index].toString(),
                            style: TextStyle(
                              fontSize: 12.0,
                              color: index == cubit_index
                                  ? Colors.white
                                  : Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                )),
          );
        },
      ),
    );
  }
}

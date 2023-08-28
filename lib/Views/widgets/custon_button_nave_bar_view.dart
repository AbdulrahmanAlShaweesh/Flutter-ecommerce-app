import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Cubits/nav_bar/navigation_bar_cubit_cubit.dart';
import 'package:flutter_ecommerce_app/constant/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonNavBarVeiw extends StatelessWidget {
  const ButtonNavBarVeiw({
    super.key,
    required this.index,
  });

  final NavigationBarCubitCubit index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // fixedColor: Colors.white,
      backgroundColor: AppColors.buttonColors,
      type: BottomNavigationBarType.fixed,
      currentIndex: index.currentIndex,
      unselectedItemColor: Colors.white.withOpacity(0.7),
      selectedItemColor: Colors.white,
      onTap: (selectedIndex) {
        index.changeNavBarIcon(selectedIndex: selectedIndex);
      },
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 5.0, top: 10.0),
            child: SvgPicture.asset(
              'assets/navigationbaricons/home.svg',
              color: index.currentIndex == 0
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              height: 23,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 5.0, top: 10),
            child: SvgPicture.asset(
              'assets/navigationbaricons/category.svg',
              color: index.currentIndex == 1
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              height: 23,
            ),
          ),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 5.0, top: 10),
            child: SvgPicture.asset(
              'assets/navigationbaricons/chat.svg',
              color: index.currentIndex == 2
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              height: 23,
            ),
          ),
          label: 'Message',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 5.0, top: 10),
            child: SvgPicture.asset(
              'assets/navigationbaricons/shopping-cart.svg',
              color: index.currentIndex == 3
                  ? Colors.white
                  : Colors.white.withOpacity(
                      0.7,
                    ),
              height: 25,
            ),
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 5.0, top: 10),
            child: SvgPicture.asset(
              'assets/navigationbaricons/person.svg',
              color: index.currentIndex == 4
                  ? Colors.white
                  : Colors.white.withOpacity(0.7),
              height: 25,
            ),
          ),
          label: 'Cart',
        ),
      ],
    );
  }
}

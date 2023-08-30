import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: double.infinity,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/navigationbaricons/menu_icon.svg',
                  height: 25,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const SmallText(text: 'Shopping Mart', fontSize: 18.0),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15.0),
                  child: SvgPicture.asset(
                    'assets/navigationbaricons/shopping-cart.svg',
                    height: 25,
                  ),
                ),
                Positioned(
                  right: 3,
                  top: -10,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

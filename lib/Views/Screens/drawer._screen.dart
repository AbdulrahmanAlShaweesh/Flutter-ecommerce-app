import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/widgets/small_text.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> url = [
      'assets/navigationbaricons/home.svg',
      'assets/navigationbaricons/chat.svg',
      'assets/navigationbaricons/shopping-cart.svg',
      'assets/navigationbaricons/favorite.svg',
      'assets/navigationbaricons/settings.svg',
      'assets/navigationbaricons/exit.svg'
    ];
    final List<String> label = [
      'Home',
      'Messages',
      'Shopping Cart',
      'My Favorite',
      'Settings',
      'Exit'
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            // color: Colors.white,
            height: 200.0,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.green,
                ),
                Center(
                    child: SmallText(
                        text: 'Abdulrahman Ibraheem', fontSize: 16.0)),
                SizedBox(
                  height: 2.0,
                ),
                Center(
                  child: SmallText(
                    text: 'Edit Profile',
                    fontSize: 14,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: url.length,
              itemBuilder: (context, index) {
                return CustomCard(
                  UrlIcon: url[index],
                  label: label[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.UrlIcon,
    required this.label,
  });

  final String UrlIcon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.withOpacity(0.5),
      child: ListTile(
        title: SmallText(
          text: label,
          fontSize: 16.0,
          // color: Colors.white,
        ),
        leading: SvgPicture.asset(
          UrlIcon,
          height: 23.0,
          colorFilter: ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}

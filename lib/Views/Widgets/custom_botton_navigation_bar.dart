// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  CustomBottomNavigationBar({super.key, required this.scaffoldKey});
  GlobalKey<ScaffoldState> scaffoldKey;
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List icons = [
    'assets/navigationbaricons/home.svg',
    'assets/navigationbaricons/category.svg',
    'assets/navigationbaricons/chat.svg',
    'assets/navigationbaricons/shopping-cart.svg',
    'assets/navigationbaricons/person.svg',
  ];
  List<String> iconName = ['Home', 'Category', 'Chat', 'Cart', 'profile'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(
          top: 10,
          bottom: 10.0,
          right: 15.0,
          left: 10.0,
        ),
        height: 63,
        margin: EdgeInsets.only(
          left: 15.0,
          right: 20,
          top: 5.0,
          bottom: 5.0,
        ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.6),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: iconName.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });

                  if (iconName[selectedIndex] == 'profile') {
                    widget.scaffoldKey.currentState!.openDrawer();
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18.0,
                    right: 10.0,
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        icons[index],
                        color:
                            selectedIndex == index ? Colors.white : Colors.grey,
                        width: iconName[index] == 'Cart' ? 25.0 : 20.0,
                        height: iconName[index] == 'Cart' ||
                                iconName[index] == 'profile'
                            ? 25.0
                            : 20.0,
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        iconName[index],
                        style: TextStyle(
                          fontSize: 11.0,
                          color: selectedIndex == index
                              ? Colors.white
                              : Colors.grey,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.6,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

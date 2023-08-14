// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use, must_be_immutable

import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/auth_view/login_Screen.dart';
import 'package:flutter_ecommerce_app/Services/app_auth_services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomDrawer extends StatefulWidget {
  CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List icons = [
    'assets/navigationbaricons/home.svg',
    'assets/navigationbaricons/shopping-cart.svg',
    'assets/favorite.svg',
    'assets/message.svg',
    'assets/navigationbaricons/category.svg',
    'assets/navigationbaricons/person.svg',
    'assets/settings.svg',
  ];

  List iconName = [
    'Home',
    'Cart',
    'Favorite',
    'Messages',
    'category',
    'Account',
    'Settings',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    User? auth = FirebaseAuth.instance.currentUser;
    return SafeArea(
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
        ),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 159, 165, 170),
              ),
              accountName: Text(
                auth!.email.toString(),
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 0.3,
                ),
              ),
              accountEmail: Text(
                auth.displayName.toString(),
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 0.3,
                ),
              ),
              currentAccountPicture: Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/personal.jpeg'),
                  ),
                  Positioned(
                    right: -5,
                    top: 5,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: false,
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            icons[index],
                            width: 22,
                            color: selectedIndex == index
                                ? Colors.black
                                : Colors.black.withOpacity(0.6),
                          ),
                          SizedBox(
                            width: 22.0,
                          ),
                          Text(
                            iconName[index],
                            style: TextStyle(
                              fontSize: 16.0,
                              // fontWeight: FontWeight.w700,
                              color: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey,
                              fontFamily: 'Roboto_Mono',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 23.0,
                vertical: 20.0,
              ),
              child: GestureDetector(
                onTap: () {
                  Auths.exitApp();
                  Navigator.pushNamed(
                    context,
                    LoginScreen.id,
                  );
                },
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/exit.svg',
                      width: 22,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    SizedBox(
                      width: 22.0,
                    ),
                    Text(
                      'Sign Out',
                      style: TextStyle(
                        fontSize: 16.0,
                        // fontWeight: FontWeight.w700,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

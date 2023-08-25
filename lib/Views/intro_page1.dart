// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            // width: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage('assets/IntroSliderImages/appLogo.png'),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30, bottom: 10.0),
            child: Text(
              'Shop Online',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.9,
              ),
            ),
          ),
          Container(
            height: 100,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SmallText(
                  text: 'You are in the place where you can',
                  fontSize: 16,
                ),
                SmallText(
                  text: 'find every thing you needt to pay in',
                  fontSize: 16,
                ),
                SmallText(text: 'jus one place', fontSize: 16)
              ],
            ),
          )
        ],
      ),
    );
  }
}

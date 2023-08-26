// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_image.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_screens_title.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderImage(
            imageUrl: 'assets/IntroSliderImages/PurchaseOnline.png',
          ),
          CustomSliderScreenTitleText(
            text: 'Shop Online',
          ),
          Column(
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
              SmallText(text: 'just one place', fontSize: 16)
            ],
          )
        ],
      ),
    );
  }
}

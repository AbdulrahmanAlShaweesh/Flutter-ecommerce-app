import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_image.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_screens_title.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderImage(imageUrl: 'assets/IntroSliderImages/TrackOrder.png'),
          CustomSliderScreenTitleText(text: 'Track Your Order'),
          Column(
            children: [
              SmallText(
                text: 'You can order and track your purches',
                fontSize: 16.0,
              ),
              SmallText(
                text: 'at any time from any where, provide',
                fontSize: 16.0,
              ),
              SmallText(
                text: 'your location ',
                fontSize: 16.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

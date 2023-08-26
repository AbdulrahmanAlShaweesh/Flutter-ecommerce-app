import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_image.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/custom_slider_screens_title.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderImage(imageUrl: 'assets/IntroSliderImages/getOrder.png'),
          CustomSliderScreenTitleText(text: 'Get Your Order'),
          Column(
            children: [
              SmallText(
                text: 'Get your purches as soon as possible',
                fontSize: 16.0,
              ),
              SmallText(
                text: 'with a good conditions',
                fontSize: 16.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}

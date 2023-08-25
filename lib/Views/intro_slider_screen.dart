import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/intro_slider_view.dart';

class IntroSliderScreen extends StatelessWidget {
  const IntroSliderScreen({super.key});
  static String id = 'Intro Slider Screen';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: IntroSliderView(),
      ),
    );
  }
}

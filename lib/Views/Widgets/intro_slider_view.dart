// ignore_for_file: prefer_final_fields

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/intro_slider_contrller.dart';
import 'package:flutter_ecommerce_app/Views/intro_page1.dart';
import 'package:flutter_ecommerce_app/Views/intro_page2.dart';
import 'package:flutter_ecommerce_app/Views/intro_page3.dart';

class IntroSliderView extends StatefulWidget {
  const IntroSliderView({super.key});

  @override
  State<IntroSliderView> createState() => _IntroSliderViewState();
}

class _IntroSliderViewState extends State<IntroSliderView> {
  PageController _controller = PageController();

  List<Widget> screens = [
    const IntroPage1(),
    const IntroPage2(),
    const IntroPage3(),
  ];
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == screens.length - 1);
            });
            log('$onLastPage');
          },
          controller: _controller,
          itemCount: screens.length,
          itemBuilder: (context, index) {
            return screens[index];
          },
        ),
        Container(
          alignment: const Alignment(0, 0.75),
          child: SliderControlWidget(
            controller: _controller,
            screens: screens,
            onLastPage: onLastPage,
          ),
        ),
      ],
    );
  }
}

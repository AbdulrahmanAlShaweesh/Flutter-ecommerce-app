// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Constants/colors.dart';

class CustomHomeScreenSlider extends StatelessWidget {
  CustomHomeScreenSlider({super.key});
  List imageSliders = [
    'assets/SliderImages/watche.png',
    'assets/SliderImages/shoes.png',
    'assets/SliderImages/camera.png',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageSliders.length,
      itemBuilder: (context, index, realIndex) {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          height: 50,
          // color: Colors.red,
          decoration: BoxDecoration(
            color: kPrimaryColors,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imageSliders[index],
              ),
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 0.9,
        aspectRatio: 16 / 6,
        height: 170,
      ),
    );
  }
}

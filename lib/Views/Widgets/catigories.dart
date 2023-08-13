// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCatigoriesWidget extends StatelessWidget {
  CustomCatigoriesWidget({super.key});

  List iconCatigory = [
    'assets/catigoryIcons/clothes.svg',
    'assets/catigoryIcons/women.svg',
    'assets/catigoryIcons/kids.svg',
    'assets/catigoryIcons/underwear.svg',
    'assets/catigoryIcons/shoes.svg',
    'assets/catigoryIcons/womenshoes.svg',
    'assets/catigoryIcons/watches.svg',
    'assets/catigoryIcons/smartphone.svg',
    'assets/catigoryIcons/camera.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20.0),
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        left: 10,
        right: 10.0,
      ),
      // padding: EdgeInsets.all(10.0),
      height: 80,
      // color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: iconCatigory.length,
        itemBuilder: (context, index) {
          return Center(
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.center,
              margin: EdgeInsets.all(
                0.0,
              ),
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.withOpacity(0.3),
                //     offset: Offset(0, 2),
                //     blurRadius: 3,
                //     spreadRadius: 4,
                //   )
                // ],
                shape: BoxShape.circle,
                // color: Colors.green,
              ),
              child: Center(
                child: SvgPicture.asset(
                  iconCatigory[index],
                  // color: Colors.black,
                  width: 30,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

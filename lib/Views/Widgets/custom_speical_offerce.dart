// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CustomSpicalOffers extends StatelessWidget {
  CustomSpicalOffers({
    super.key,
    required this.seeAll,
    required this.text,
  });

  String text;
  String seeAll;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: 40,
      // color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 14.0,
              letterSpacing: 0.6,
              fontWeight: FontWeight.w700,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Text(
            seeAll,
            style: TextStyle(
              fontSize: 14.0,
              letterSpacing: 0.6,
              fontWeight: FontWeight.w700,
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}

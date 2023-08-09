// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomCatigoriesWidget extends StatelessWidget {
  const CustomCatigoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10.0,
      ),
      // padding: EdgeInsets.all(10.0),
      height: 80,
      // color: Colors.red,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(
              10.0,
            ),
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              color: Colors.green,
            ),
          );
        },
      ),
    );
  }
}

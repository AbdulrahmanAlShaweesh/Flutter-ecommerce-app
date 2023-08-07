// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomHorizontalLineWidget extends StatelessWidget {
  const CustomHorizontalLineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            thickness: 2.7,
            indent: 30.0,
            endIndent: 2.0,
          ),
        ),
        Text(
          'OR',
          style: TextStyle(
              fontSize: 16.0, letterSpacing: 0.8, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Divider(
            thickness: 2.7,
            endIndent: 30.0,
            indent: 2.0,
          ),
        ),
      ],
    );
  }
}

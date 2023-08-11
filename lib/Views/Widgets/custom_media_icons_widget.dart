// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomMediaIconsWidget extends StatelessWidget {
  CustomMediaIconsWidget({
    super.key,
    required this.iconPath,
  });

  String iconPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // color: Colors.red,
      ),
      child: SvgPicture.asset(
        iconPath,
        fit: BoxFit.contain,
        width: 40,
      ),
    );
  }
}

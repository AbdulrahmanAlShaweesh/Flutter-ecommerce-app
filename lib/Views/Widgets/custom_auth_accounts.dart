import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAuthonticationAvilableAccounts extends StatelessWidget {
  const CustomAuthonticationAvilableAccounts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/medialIcons/google.svg',
          height: 40,
          color: Color(0xFF0084e6),
        ),
        const SizedBox(
          width: 20.0,
        ),
        SvgPicture.asset(
          'assets/medialIcons/facebook.svg', height: 40,
          // color: Colors.white, si
        ),
        const SizedBox(
          width: 20.0,
        ),
        SvgPicture.asset(
          'assets/medialIcons/apple.svg',
          color: Color(0xFF0084e6),
          height: 40.0,
        ),
      ],
    );
  }
}

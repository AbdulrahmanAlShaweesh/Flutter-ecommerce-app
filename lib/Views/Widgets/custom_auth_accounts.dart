import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/widgets/custom_auth_account_icon.dart';
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
        const AuthAccountIcon(
          url: 'assets/medialIcons/google.svg',
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: SvgPicture.asset(
            'assets/medialIcons/facebook.svg', height: 40,
            // color: Colors.white, si
          ),
        ),
        const AuthAccountIcon(
          url: 'assets/medialIcons/apple.svg',
        ),
      ],
    );
  }
}

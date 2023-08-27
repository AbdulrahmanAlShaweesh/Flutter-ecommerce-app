import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthAccountIcon extends StatelessWidget {
  const AuthAccountIcon({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      url,
      colorFilter: const ColorFilter.mode(
        Color(0xFF0084e6),
        BlendMode.srcIn,
      ),
      height: 40.0,
    );
  }
}

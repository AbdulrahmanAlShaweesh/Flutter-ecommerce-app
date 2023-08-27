import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';
import 'package:flutter_ecommerce_app/constant/app_colors.dart';

class CustomTermOfUse extends StatelessWidget {
  const CustomTermOfUse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            right: 10.0,
            left: 3.0,
          ),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.iconColor,
            ),
          ),
        ),
        const SmallText(
          text: 'I agree to the term of use',
          fontSize: 13,
        ),
      ],
    );
  }
}

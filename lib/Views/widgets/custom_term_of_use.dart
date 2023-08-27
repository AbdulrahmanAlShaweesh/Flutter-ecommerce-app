import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_app/Cubits/agree_to_term_used/agree_to_term_cubit.dart';
import 'package:flutter_ecommerce_app/Views/Widgets/small_text.dart';
import 'package:flutter_ecommerce_app/constant/app_colors.dart';

class CustomTermOfUse extends StatelessWidget {
  const CustomTermOfUse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AgreeToTermCubit(),
      child: BlocBuilder<AgreeToTermCubit, AgreeToTermState>(
        builder: (context, state) {
          var isChecked = BlocProvider.of<AgreeToTermCubit>(context);
          return GestureDetector(
            onTap: () {
              isChecked.userAgree();
            },
            child: Row(
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
                  child: isChecked.isUserAgreed
                      ? const Icon(
                          Icons.check,
                          size: 18.0,
                        )
                      : const SizedBox.shrink(),
                ),
                const SmallText(
                  text: 'I agree to the term of use',
                  fontSize: 13,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

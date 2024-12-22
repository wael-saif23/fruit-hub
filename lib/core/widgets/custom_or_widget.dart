import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomOrWidget extends StatelessWidget {
  const CustomOrWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppColors.kLighterGray,
          ),
        ),
        const SizedBox(
          width: 18,
        ),
        Text(
          'أو',
          style: AppTextStyles.semiBold16.copyWith(color: AppColors.kblack),
        ),
        const SizedBox(
          width: 18,
        ),
        const Expanded(
          child: Divider(
            color: AppColors.kLighterGray,
          ),
        ),
      ],
    );
  }
}

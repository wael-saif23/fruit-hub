import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text, 

  });
  final VoidCallback onPressed;
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              )),
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.kmainbackgroundColor,
            ),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.backgroundColor,
    this.actions,
    this.leadingIcon,
    this.centerTitle,
    this.leadingOnTap,
    this.elevation,
    this.titleTextStyle,
  });
  final String title;
  final TextStyle? titleTextStyle;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final Icon? leadingIcon;
  final bool? centerTitle;
  final VoidCallback? leadingOnTap;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: titleTextStyle ??
            AppTextStyles.bold19.copyWith(
              color: AppColors.kblack,
            ),
      ),
      centerTitle: centerTitle ?? true,
      backgroundColor: AppColors.kmainbackgroundColor,
      leading: GestureDetector(
          onTap: leadingOnTap ?? () => Navigator.pop(context),
          child: leadingIcon ?? const Icon(Icons.arrow_back_ios_new)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

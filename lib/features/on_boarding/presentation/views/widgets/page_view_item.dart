import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/context.dart';
import 'package:fruits_hub/core/extentions/navegator_extension.dart';
import 'package:fruits_hub/core/routes.dart';
import 'package:fruits_hub/core/services/shared_pref_singltone.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
    required this.backgroundImage,
    required this.isVisible,
  });

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * .5,
          child: Stack(
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(
                backgroundImage,
                fit: BoxFit.fill,
              )),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Visibility(
                  visible: isVisible,
                  child: InkWell(
                    onTap: () {
                      SharedPrefsHelper.save(
                          key: KIsOnbourdingViewSeen, value: true);
                      context.pushReplacementNamed(AppRoutes.login);
                    },
                    child: Text(
                      "تخط",
                      style: AppTextStyles.regular13.copyWith(
                        decoration: TextDecoration.underline,
                        color: AppColors.kLightGray,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: Text(
            subtitle,
            style: AppTextStyles.semiBold13.copyWith(color: AppColors.kGray),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

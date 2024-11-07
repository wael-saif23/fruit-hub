import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisible: true,
          image: Assets.photosOnBoardingView1ImageFruitBasket,
          backgroundImage: Assets.photosOnboardingview1BackgroundImage,
          subtitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "مرحبًا بك في",
                style: AppTextStyles.bold23
                    .copyWith(color: AppColors.kblack, shadows: shadows()),
              ),
              Text(
                "  HUB",
                style: AppTextStyles.bold23.copyWith(
                    color: AppColors.secondaryColor, shadows: shadows()),
              ),
              Text(
                "Fruit",
                style: AppTextStyles.bold23.copyWith(
                    color: AppColors.primaryColor, shadows: shadows()),
              ),
            ],
          ),
        ),
        PageViewItem(
          isVisible: false,
          image: Assets.photosOnBoardingView2ImagePineapple,
          backgroundImage: Assets.photosOnboardingview2BackgroundImage,
          subtitle:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
          title: Text('ابحث وتسوق',
              textAlign: TextAlign.center,
              style: AppTextStyles.bold23.copyWith(
                color: AppColors.kblack,
              )),
        ),
      ],
    );
  }

  List<Shadow>? shadows() {
    return [
      const Shadow(
        color: AppColors.kLightGray,
        offset: Offset(0, 4),
        blurRadius: 10.0,
      ),
    ];
  }
}

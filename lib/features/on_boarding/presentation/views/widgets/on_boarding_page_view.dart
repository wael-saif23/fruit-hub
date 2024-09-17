import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        PageViewItem(
          image: Assets.photosOnBoardingView1ImageFruitBasket,
          backgroundImage: Assets.photosOnboardingview1BackgroundImage,
          subtitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Row(
            children: [
              Text(
                "مرحبًا بك في",
              ),
              Text(
                "Fruit",
              ),
              Text(
                "HUB",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

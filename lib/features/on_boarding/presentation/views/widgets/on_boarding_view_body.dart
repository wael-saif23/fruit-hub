import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/context.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_buttom.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndex = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: OnBoardingPageView(
          pageController: pageController,
        )),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: currentIndex == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5), // Inactive color
            activeColor: AppColors.primaryColor,
            
          ),
        ),
        const SizedBox(
          height: 26,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
            child: currentIndex == 1
                ? CustomButton(
                    onPressed: () {},
                    text: 'ابدأ الان',
                  )
                : const SizedBox(
                    height: 54,
                  )),
        const SizedBox(
          height: 43,
        ),
      ],
    );
  }
}

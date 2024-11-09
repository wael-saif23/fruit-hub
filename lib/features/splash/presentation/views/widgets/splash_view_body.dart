import 'package:flutter/material.dart';
import 'package:fruits_hub/context.dart';
import 'package:fruits_hub/core/extentions/navegator_extension.dart';
import 'package:fruits_hub/core/routes.dart';
import 'package:fruits_hub/core/services/shared_pref_singltone.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.photosPlant),
          ],
        ),
        SvgPicture.asset(Assets.photosTheLogo),
        SvgPicture.asset(
          Assets.photosCirclesSpashView,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void executeNavigation() {
    bool isSeen = SharedPrefsHelper.get(key: KIsOnbourdingViewSeen) ?? false;
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        if (isSeen) {
          context.pushReplacementNamed(AppRoutes.login);
        } else {
          context.pushReplacementNamed(AppRoutes.onBoarding);
        }
      }
    });
  }
}

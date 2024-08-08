import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../core/utils/app_images.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});
  @override 
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
         children: [
           SvgPicture.asset(Assets.photosPlant),
         ],
       ),
       SvgPicture.asset(Assets.photosTheLogo),
       SvgPicture.asset(Assets.photosCirclesSpashView,
       fit: BoxFit.fill,
       ),
      ],
    );
  }
}
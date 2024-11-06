import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
    required this.backgroundImage,
  });

  final String image, backgroundImage;
  final String subtitle;
  final Widget title;
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
              const Positioned(
                top: 16,
                right: 16,
                child: Text(
                  "تخطي",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
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
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        Text(
          'data',
          style: TextStyle(color: Colors.black),
        ),
        Text(
          'data',
          style: TextStyle(color: Colors.black),
        )
      ],
    );
  }
}

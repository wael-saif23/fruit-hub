import 'package:flutter/material.dart';

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
    return const Placeholder();
  }
}

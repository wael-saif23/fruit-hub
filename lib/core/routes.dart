import 'package:flutter/material.dart';

import '../features/on_boarding/presentation/views/on_boarding_view.dart';
import '../features/splash/presentation/views/splash_view.dart';

class AppRoutes {
  static const String splash = '/';
  static const String onBoarding = '/OnBoardingView';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
        );
      case AppRoutes.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );
    }
  }
}

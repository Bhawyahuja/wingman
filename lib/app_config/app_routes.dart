import 'package:flutter/cupertino.dart';
import 'package:wingman/features/auth/login/ui/login_page.dart';
import 'package:wingman/features/home/home_page.dart';
import 'package:wingman/features/onboarding/ui/onboarding_page.dart';

class AppRoutes {
  static const String loginNavigator = 'login_navigator';
  static const String onboardingPage = 'onboarding_page';
  static const String homePage = 'home_page';

  static Map<String, WidgetBuilder> get routes {
    return {
      loginNavigator: (context) => const LoginPage(),
      onboardingPage: (context) => const OnBoardingPage(),
      homePage: (context) => const HomePage(),
    };
  }
}

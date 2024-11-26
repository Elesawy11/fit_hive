import 'package:fit_hive/features/onboarding/presentation/views/onboarding.dart';
import 'package:fit_hive/features/welcome/presentation/welcome_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> getPageList = [
  GetPage(name: Routes.welcomeView, page: () => const WelcomeView()),
  GetPage(name: Routes.onboardingView, page: () => const OnboardingView()),
];

abstract class Routes {
  static const String welcomeView = '/';
  static const String onboardingView = '/onboarding';
}

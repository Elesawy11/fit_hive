import 'package:fit_hive/features/authentication/presentation/views/login_view.dart';
import 'package:fit_hive/features/authentication/presentation/views/register_view.dart';
import 'package:fit_hive/features/goals/presentation/views/goals_view.dart';
import 'package:fit_hive/features/home/presentation/views/home_view.dart';
import 'package:fit_hive/features/onboarding/presentation/views/onboarding.dart';
import 'package:fit_hive/features/register_success/presentation/views/register_success_view.dart';
import 'package:fit_hive/features/welcome/presentation/views/welcome_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> getPageList = [
  GetPage(name: Routes.welcomeView, page: () => const WelcomeView()),
  GetPage(name: Routes.onboardingView, page: () => const OnboardingView()),
  GetPage(name: Routes.registerView, page: () => const RegisterView()),
  GetPage(name: Routes.loginView, page: () => const LoginView()),
  GetPage(name: Routes.goalsView, page: () => const GoalsView()),
  GetPage(
      name: Routes.registerSuccessView,
      page: () => const RegisterSuccessView()),
  GetPage(name: Routes.homeView, page: () => const HomeView()),
];

abstract class Routes {
  static const String welcomeView = '/';
  static const String onboardingView = '/onboarding';
  static const String registerView = '/registerView';
  static const String loginView = '/loginView';
  static const String goalsView = '/goalsView';
  static const String registerSuccessView = '/registerSuccessView';
  static const String homeView = '/homeView';
}

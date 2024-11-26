import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/custom_text_button.dart';
import 'widgets/welcome_body_text.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            const WelcomeBodyText(),
            const Spacer(),
            CustomTextbutton(
              onPressed: () => Get.offNamed(Routes.onboardingView),
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}

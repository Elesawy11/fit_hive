import 'package:fit_hive/core/assets/assets.dart';
import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/utils/routes.dart';
import 'package:fit_hive/core/widgets/custom_text_button.dart';
import 'package:fit_hive/core/widgets/custom_bold_and_normal_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegisterSuccessView extends StatelessWidget {
  const RegisterSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            Image.asset(
              Assets.assetsImagesRegistrationSuccess,
            ),
            verticalSpace(24),
            const CustomBoldAndNormalText(
              firstText: 'Welcome, User',
              secondText:
                  'You are all set now, let’s reach your goals together with us',
            ),
            const Spacer(
              flex: 2,
            ),
            CustomTextbutton(
              text: 'Go To Home',
              onPressed: () => Get.offAndToNamed(Routes.homeView),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

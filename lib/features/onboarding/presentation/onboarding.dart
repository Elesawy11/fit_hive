import 'package:fit_hive/core/assets/assets.dart';
import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/onboarding_circuler_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Assets.assetsImagesOnboarding1,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            verticalSpace(20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track your goal',
                    style: FontStyles.font24Bold().copyWith(
                      color: ColorHelper.color1D1(),
                    ),
                  ),
                  Text(
                    'Don\'t worry if you have trouble determining your goals, We can help you determine your goals and track your goals',
                    style: FontStyles.font14Regular().copyWith(
                      color: ColorHelper.color7B6(),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: 24.w, bottom: 32.h),

                child: const OnboardingCirculerButton(),
                // child:
              ),
            )
          ],
        ),
      ),
    );
  }
}

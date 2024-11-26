import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/onboarding_circuler_button.dart';
import 'widgets/onboarding_list_view.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const OnbaordingListView(),
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

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../core/theming/color_helper.dart';
import '../../../../core/utils/routes.dart';
import 'circule_button.dart';

class OnboardingCirculerButton extends StatefulWidget {
  const OnboardingCirculerButton({
    super.key,
  });

  @override
  State<OnboardingCirculerButton> createState() =>
      _OnboardingCirculerButtonState();
}

class _OnboardingCirculerButtonState extends State<OnboardingCirculerButton> {
  double progress = 0.25;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (progress == 1) {
          Get.toNamed(Routes.welcomeView);
        }
        progress = progress + 0.25;

        setState(() {});
      },
      child: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const CirculerButton(),
            SizedBox(
              height: 68.r,
              width: 68.r,
              child: CircularProgressIndicator(
                backgroundColor: ColorHelper.colorB8C(),
                color: ColorHelper.color92A(),
                strokeWidth: 3,
                value: progress,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

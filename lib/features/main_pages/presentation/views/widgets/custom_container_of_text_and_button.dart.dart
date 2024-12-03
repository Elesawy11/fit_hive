import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';
import 'custom_home_text_button.dart';

class CustomContainerOfTextAndButton extends StatelessWidget {
  const CustomContainerOfTextAndButton({
    super.key,
    required this.text,
    required this.buttonText,
  });
  final String text, buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorHelper.color339D(),
        borderRadius: BorderRadius.circular(
          30.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: FontStyles.font16Medium().copyWith(
                color: ColorHelper.mainColor(),
              ),
            ),
            CustomHomeTextButton(
              width: 90.w,
              height: 40.h,
              text: buttonText,
              buttonColor: ColorHelper.color92A(),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacers.dart';
import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';
import 'custom_home_text_button.dart';
import 'custom_progress_bar.dart';

class CustomProgressWidget extends StatelessWidget {
  const CustomProgressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        gradient: LinearGradient(
          colors: [
            ColorHelper.colorEEA(),
            ColorHelper.colorC58(),
          ],
        ),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'BMI (Body Mass Index)',
                style: FontStyles.font16SemiBold().copyWith(
                  color: Colors.white,
                ),
              ),
              Text(
                'You have a healthy weight',
                style: FontStyles.font12Medium().copyWith(
                  color: Colors.white,
                ),
              ),
              verticalSpace(12),
              CustomHomeTextButton(
                buttonColor: ColorHelper.color844(),
                text: 'View more',
              ),
            ],
          ),
          const CustomProgressBar()
        ],
      ),
    );
  }
}

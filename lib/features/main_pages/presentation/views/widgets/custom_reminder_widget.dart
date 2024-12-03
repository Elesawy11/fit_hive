import 'package:fit_hive/core/assets/assets.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomReminderWidget extends StatelessWidget {
  const CustomReminderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorHelper.colorEEA(),
        borderRadius: BorderRadius.circular(
          20.r,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              Assets.assetsImagesReminder,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Reminder!',
                  style: FontStyles.font12Medium().copyWith(
                    color: ColorHelper.colorError(),
                    height: 1.5,
                  ),
                ),
                Text(
                  'Next Photos Fall On July 08',
                  style: FontStyles.font14Medium().copyWith(
                    color: ColorHelper.mainColor(),
                    height: 1.5,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.close,
              color: ColorHelper.color7B6(),
            )
          ],
        ),
      ),
    );
  }
}

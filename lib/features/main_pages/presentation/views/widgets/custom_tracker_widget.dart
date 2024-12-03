import 'package:fit_hive/core/assets/assets.dart';
import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_home_text_button.dart';

class CustomTrackerWidget extends StatelessWidget {
  const CustomTrackerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorHelper.color3392(),
              ColorHelper.color339D(),
            ],
          ),
          borderRadius: BorderRadius.circular(20.r)),
      child: Padding(
        padding: EdgeInsets.all(20.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 180.w,
                  child: Text(
                    'Track your monthly progress with Photo',
                    overflow: TextOverflow.fade,
                    style: FontStyles.font12Medium(),
                  ),
                ),
                verticalSpace(8),
                CustomHomeTextButton(
                  text: 'Learn more',
                  buttonColor: ColorHelper.color92A(),
                ),
              ],
            ),
            Image.asset(
              Assets.assetsImagesTrack,
            )
          ],
        ),
      ),
    );
  }
}

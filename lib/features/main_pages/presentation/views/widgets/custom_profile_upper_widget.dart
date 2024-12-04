import 'package:fit_hive/core/assets/assets.dart';
import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_home_text_button.dart';

class CustomProfileUpperWidget extends StatelessWidget {
  const CustomProfileUpperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.assetsImagesLatestPic),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Stefani Wong',
              style: FontStyles.font12Medium().copyWith(
                color: ColorHelper.mainColor(),
                height: 1.5,
              ),
            ),
            Text(
              'Lose weight program',
              style: FontStyles.font12Regular().copyWith(
                color: ColorHelper.color7B6(),
                height: 1.5,
              ),
            ),
          ],
        ),
        const Spacer(),
        CustomHomeTextButton(
          width: 80.w,
          height: 30.h,
          text: 'Edit',
          buttonColor: ColorHelper.color9DC(),
        ),
      ],
    );
  }
}

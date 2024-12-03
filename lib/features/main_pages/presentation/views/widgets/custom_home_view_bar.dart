import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class CustomHomeViewBar extends StatelessWidget {
  const CustomHomeViewBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'Welcome Back',
              style: FontStyles.font12Medium().copyWith(
                height: 1.5.h,
                color: ColorHelper.secondaryColor(),
              ),
            ),
            Text(
              'Stefanie',
              style: FontStyles.font20Bold().copyWith(
                height: 1.5.h,
                color: ColorHelper.mainColor(),
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
            color: ColorHelper.secondaryColor(),
            size: 24.r,
            grade: 2,
          ),
        ),
      ],
    );
  }
}
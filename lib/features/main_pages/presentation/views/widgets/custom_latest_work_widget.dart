import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';

class CustomLatestWorkWidget extends StatelessWidget {
  const CustomLatestWorkWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Latest workout',
          style: FontStyles.font16Medium().copyWith(
            color: ColorHelper.mainColor(),
          ),
        ),
        Text(
          'see more',
          style: FontStyles.font12Regular().copyWith(
            color: ColorHelper.secondaryColor(),
          ),
        ),
      ],
    );
  }
}

import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';

class CustomRowOfTwoText extends StatelessWidget {
  const CustomRowOfTwoText({
    super.key, required this.boldText, required this.normalText,
  });
  final String boldText,normalText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          boldText,
          style: FontStyles.font16Medium().copyWith(
            color: ColorHelper.mainColor(),
          ),
        ),
        Text(
          normalText,
          style: FontStyles.font12Regular().copyWith(
            color: ColorHelper.secondaryColor(),
          ),
        ),
      ],
    );
  }
}

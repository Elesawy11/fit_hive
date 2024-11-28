import 'package:flutter/material.dart';
import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class GoalsUpperText extends StatelessWidget {
  const GoalsUpperText({
    super.key,
    required this.firstText,
    required this.secondText,
  });
  final String firstText, secondText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          firstText,
          style:
              FontStyles.font20Bold().copyWith(color: ColorHelper.mainColor()),
        ),
        Text(
          secondText,
          textAlign: TextAlign.center,
          style: FontStyles.font16Regular()
              .copyWith(color: ColorHelper.secondaryColor()),
        ),
      ],
    );
  }
}

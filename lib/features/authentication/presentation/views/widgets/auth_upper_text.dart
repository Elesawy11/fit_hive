import 'package:flutter/material.dart';
import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class AuthUpperText extends StatelessWidget {
  const AuthUpperText({
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
          style: FontStyles.font16Regular()
              .copyWith(color: ColorHelper.secondaryColor()),
        ),
        Text(
          secondText,
          style:
              FontStyles.font20Bold().copyWith(color: ColorHelper.mainColor()),
        ),
      ],
    );
  }
}

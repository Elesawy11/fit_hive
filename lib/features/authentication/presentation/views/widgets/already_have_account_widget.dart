import 'package:flutter/material.dart';
import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    super.key,
    required this.text,
    required this.operat,
    this.onTap,
  });
  final String text, operat;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: FontStyles.font14Regular().copyWith(
            color: ColorHelper.mainColor(),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            operat,
            style: FontStyles.font14Regular().copyWith(
              color: ColorHelper.color844(),
            ),
          ),
        )
      ],
    );
  }
}

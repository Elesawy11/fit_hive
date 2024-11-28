import 'package:flutter/material.dart';
import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: FontStyles.font14Regular().copyWith(
            color: ColorHelper.mainColor(),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            ' Login',
            style: FontStyles.font14Regular().copyWith(
              color: ColorHelper.color844(),
            ),
          ),
        )
      ],
    );
  }
}

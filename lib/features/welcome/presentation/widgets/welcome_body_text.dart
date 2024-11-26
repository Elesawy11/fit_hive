import 'package:flutter/material.dart';
import '../../../../core/theming/color_helper.dart';
import '../../../../core/theming/font_styles.dart';

class WelcomeBodyText extends StatelessWidget {
  const WelcomeBodyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Flutter',
                  style: FontStyles.font36SemiBold().copyWith(
                    color: ColorHelper.color1D1(),
                  ),
                ),
                TextSpan(
                  text: ' Fit',
                  style: FontStyles.font36SemiBold().copyWith(
                    color: ColorHelper.color92A(),
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Everybody can train',
            style: FontStyles.font18Regular().copyWith(
              color: ColorHelper.color7B6(),
            ),
          )
        ],
      ),
    );
  }
}

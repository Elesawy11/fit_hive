import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class RowOfDividersAndText extends StatelessWidget {
  const RowOfDividersAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: ColorHelper.colorB8C(),
            thickness: 2,
            indent: 30.w,
          ),
        ),
        Text(
          '  Or  ',
          style: FontStyles.font14Regular().copyWith(
            color: ColorHelper.mainColor(),
          ),
        ),
        Expanded(
          child: Divider(
            color: ColorHelper.colorB8C(),
            thickness: 2,
            endIndent: 30.w,
          ),
        ),
      ],
    );
  }
}

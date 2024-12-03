import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class CustomProgressBar extends StatelessWidget {
  const CustomProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Text(
          '20.1',
          style: FontStyles.font14Bold().copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 70.r,
          width: 70.r,
          child: CircularProgressIndicator(
            backgroundColor: ColorHelper.colorF7F(),
            color: ColorHelper.color645(),
            value: 0.21,
            strokeWidth: 12.r,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class CustomHomeTextButton extends StatelessWidget {
  const CustomHomeTextButton({
    super.key,
    this.buttonColor,
    required this.text,
    this.width,
    this.height,
  });
  final Color? buttonColor;
  final String text;
  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor ?? ColorHelper.color844(),
          borderRadius: BorderRadius.circular(
            100.r,
          ),
        ),
        width: width ?? 130.w,
        height: height ?? 40.h,
        child: Center(
          child: Text(
            text,
            style: FontStyles.font14Medium().copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../helpers/basic_gradient.dart';
import '../theming/font_styles.dart';

class CustomTextbutton extends StatelessWidget {
  const CustomTextbutton({
    super.key,
    this.onPressed,
    required this.text,
  });
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: ColorHelper.color92A(),
              spreadRadius: 0.5,
              blurRadius: 15,
            ),
          ],
          borderRadius: BorderRadius.circular(32),
          gradient: basicGradient(),
        ),
        child: Center(
          child: Text(
            text,
            style: FontStyles.font16Bold().copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/basic_gradient.dart';
import '../../../../../core/theming/font_styles.dart';

class CustomTextbutton extends StatelessWidget {
  const CustomTextbutton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          gradient: basicGradient(),
        ),
        child: Center(
          child: Text(
            'Get Started',
            style: FontStyles.font16Bold().copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  
}

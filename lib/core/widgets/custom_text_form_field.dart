import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Widget? prefixIcon;
  final int? maxLines;
  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;
  const CustomTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    required this.validator,
    this.prefixIcon,
    this.maxLines = 1,
    this.onTap,
    this.onTapOutside,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTapOutside: onTapOutside,
      onTap: onTap,
      controller: controller,
      maxLines: maxLines,
      decoration: textFieldDecoration(),
      obscureText: isObscureText ?? false,
      style: FontStyles.font14Regular().copyWith(
        color: ColorHelper.secondaryColor(),
      ),
      validator: (value) {
        return validator(value);
      },
    );
  }

  InputDecoration textFieldDecoration() {
    return InputDecoration(
      isDense: true,
      hintText: hintText,
      fillColor: backgroundColor ?? ColorHelper.colorF7F(),
      suffixIcon: suffixIcon,
      filled: true,
      prefixIcon: prefixIcon,
      contentPadding: contentPadding ??
          EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
      focusedBorder: focusedBorder ??
          outLineBorder(
            color: ColorHelper.color844(),
          ),
      enabledBorder: enabledBorder ??
          outLineBorder(
            color: ColorHelper.colorECE(),
          ),
      errorBorder: outLineBorder(
        color: Colors.red,
      ),
      focusedErrorBorder: outLineBorder(
        color: Colors.red,
      ),
      hintStyle: hintStyle ??
          FontStyles.font12Regular().copyWith(
            color: ColorHelper.colorADA(),
          ),
    );
  }

  OutlineInputBorder outLineBorder({required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(14.0.r),
    );
  }
}

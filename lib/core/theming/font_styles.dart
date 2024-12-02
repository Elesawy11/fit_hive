import 'package:fit_hive/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class FontStyles {
  static TextStyle font36SemiBold() =>
      TextStyle(fontSize: 36.sp, fontWeight: FontWeightHelper.semiBold);

  static TextStyle font18Regular() =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeightHelper.regular);

  static TextStyle font16Bold() =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeightHelper.bold);

  static TextStyle font16SemiBold() =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeightHelper.semiBold);

  static TextStyle font24Bold() =>
      TextStyle(fontSize: 24.sp, fontWeight: FontWeightHelper.bold);

  static TextStyle font14Regular() =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeightHelper.regular);

  static TextStyle font14Medium() =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeightHelper.medium);

  static TextStyle font14Bold() =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeightHelper.bold);

  static TextStyle font16Regular() =>
      TextStyle(fontSize: 16.sp, fontWeight: FontWeightHelper.regular);

  static TextStyle font20Bold() =>
      TextStyle(fontSize: 20.sp, fontWeight: FontWeightHelper.bold);

  static TextStyle font12Regular() =>
      TextStyle(fontSize: 12.sp, fontWeight: FontWeightHelper.regular);

  static TextStyle font10Medium() =>
      TextStyle(fontSize: 10.sp, fontWeight: FontWeightHelper.medium);

  static TextStyle font12Medium() =>
      TextStyle(fontSize: 12.sp, fontWeight: FontWeightHelper.medium);
}

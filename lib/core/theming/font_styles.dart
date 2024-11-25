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
}

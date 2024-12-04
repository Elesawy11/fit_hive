import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetaileWidget extends StatelessWidget {
  const CustomDetaileWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: Row(
        children: [
          Icon(
            icon,
            size: 20.r,
            color: ColorHelper.color9DC(),
          ),
          horizontalSpace(12),
          Text(
            text,
            style: FontStyles.font12Regular().copyWith(
              color: ColorHelper.color7B6(),
            ),
          ),
          const Spacer(),
          Icon(
            Icons.chevron_right_outlined,
            size: 24.r,
            color: ColorHelper.color7B6(),
          ),
        ],
      ),
    );
  }
}

const List<List<dynamic>> accountList = [
  [
    Icons.person_pin_circle_outlined,
    'Personal Data',
  ],
  [
    Icons.receipt_long_outlined,
    'Achievements',
  ],
  [
    Icons.pie_chart_outline,
    'Activity History',
  ],
  [
    Icons.insert_chart_outlined,
    'Workout Progress',
  ],
];

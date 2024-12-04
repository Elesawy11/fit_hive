import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetaileWidget extends StatelessWidget {
  const CustomDetaileWidget({
    super.key,
    required this.leftIcon,
    required this.text,
    required this.rightIcon,
  });
  final IconData leftIcon;
  final IconData rightIcon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: Row(
        children: [
          Icon(
            leftIcon,
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
            rightIcon,
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
    Icons.chevron_right_outlined,
  ],
  [
    Icons.receipt_long_outlined,
    'Achievements',
    Icons.chevron_right_outlined,
  ],
  [
    Icons.pie_chart_outline,
    'Activity History',
    Icons.chevron_right_outlined,
  ],
  [
    Icons.insert_chart_outlined,
    'Workout Progress',
    Icons.chevron_right_outlined,
  ],
];

const List<List<dynamic>> notificationsList = [
  [
    Icons.notifications_none_outlined,
    'Pop-up Notifications',
    Icons.toggle_on_outlined,
  ],
  [
    Icons.mark_email_unread_outlined,
    'Pop-up Notifications',
    Icons.toggle_on_outlined,
  ],
];

const List<List<dynamic>> otherList = [
  [
    Icons.contact_support_outlined,
    'Contact Us',
    Icons.chevron_right_outlined,
  ],
  [
    Icons.privacy_tip_outlined,
    'Privacy Policy',
    Icons.chevron_right_outlined,
  ],
  [
    Icons.settings_outlined,
    'Settings',
    Icons.chevron_right_outlined,
  ],
];

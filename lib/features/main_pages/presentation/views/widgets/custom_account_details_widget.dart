import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_detaile_widget.dart';

class CustomAccountDetailsWidget extends StatelessWidget {
  const CustomAccountDetailsWidget({
    super.key,
    required this.title,
    required this.list,
  });
  final String title;
  final List<List<dynamic>> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          color: ColorHelper.colorB8C(),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: FontStyles.font16SemiBold(),
            ),
            verticalSpace(8),
            Column(
              children: List.generate(
                list.length,
                (index) => CustomDetaileWidget(
                  leftIcon: list[index][0],
                  text: list[index][1],
                  rightIcon: list[index][2],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

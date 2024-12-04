import 'package:fit_hive/core/assets/assets.dart';
import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:fit_hive/features/main_pages/presentation/views/widgets/custom_detaile_widget.dart';
import 'package:fit_hive/features/main_pages/presentation/views/widgets/custom_home_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_details_list_view.dart';
import 'widgets/custom_profile_upper_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          verticalSpace(40),
          const CustomProfileUpperWidget(),
          verticalSpace(28),
          const CustomDetailsListView(),
          verticalSpace(24),
          Container(
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
                    'Account',
                    style: FontStyles.font16SemiBold(),
                  ),
                  verticalSpace(8),
                  Column(
                    children: List.generate(
                      accountList.length,
                      (index) => CustomDetaileWidget(
                        icon: accountList[index][0],
                        text: accountList[index][1],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

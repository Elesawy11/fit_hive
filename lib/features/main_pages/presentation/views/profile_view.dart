import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/features/main_pages/presentation/views/widgets/custom_detaile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_account_details_widget.dart';
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
          const CustomAccountDetailsWidget(
            title: 'Account',
            list: accountList,
          ),
          verticalSpace(24),
          const CustomAccountDetailsWidget(
            title: 'Notifications',
            list: notificationsList,
          ),
          verticalSpace(24),
          const CustomAccountDetailsWidget(
            title: 'Other',
            list: otherList,
          ),
        ],
      ),
    );
  }
}

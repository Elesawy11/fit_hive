import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_home_view_bar.dart';
import 'widgets/custom_progress_widget.dart';
import 'widgets/custom_today_target_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 2,
            ),
            const CustomHomeViewBar(),
            verticalSpace(24),
            const CustomProgressWidget(),
            const CustomTodayTargetWidget(),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

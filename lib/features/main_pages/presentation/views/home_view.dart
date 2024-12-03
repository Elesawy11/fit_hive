import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_home_view_bar.dart';
import 'widgets/custom_latest_list_view.dart';
import 'widgets/custom_row_of_two_text.dart.dart';
import 'widgets/custom_progress_widget.dart';
import 'widgets/custom_container_of_text_and_button.dart.dart';

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
            verticalSpace(40),
            const CustomHomeViewBar(),
            verticalSpace(24),
            const CustomProgressWidget(),
            verticalSpace(24),
            const CustomContainerOfTextAndButton(
              text: 'Today\'s target',
              buttonText: 'Check',
            ),
            verticalSpace(30),
            const CustomRowOfTwoText(
              boldText: 'Latest workout',
              normalText: 'see more',
            ),
            verticalSpace(24),
            const Expanded(
              child: CustomLatestWorkListView(),
            ),
          ],
        ),
      ),
    );
  }
}

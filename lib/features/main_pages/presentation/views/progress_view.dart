import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/features/main_pages/presentation/views/widgets/custom_container_of_text_and_button.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_progress_floating_action_button.dart';
import 'widgets/custom_reminder_widget.dart';
import 'widgets/custom_tracker_widget.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomProgressFloatingActionButton(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            verticalSpace(40),
            const CustomReminderWidget(),
            verticalSpace(32),
            const CustomTrackerWidget(),
            verticalSpace(32),
            const CustomContainerOfTextAndButton(
              text: 'Compare my phone',
              buttonText: 'Compare',
            )
          ],
        ),
      ),
    );
  }
}

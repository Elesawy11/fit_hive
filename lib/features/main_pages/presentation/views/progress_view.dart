import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_progress_floating_action_button.dart';
import 'widgets/custom_reminder_widget.dart';

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
            ],
          ),
        ));
  }
}


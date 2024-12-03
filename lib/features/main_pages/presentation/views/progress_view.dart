import 'package:fit_hive/core/assets/assets.dart';
import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:fit_hive/features/main_pages/presentation/views/widgets/custom_container_of_text_and_button.dart.dart';
import 'package:fit_hive/features/main_pages/presentation/views/widgets/custom_row_of_two_text.dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_gallery_image_list.dart';
import 'widgets/custom_history_and_gallery.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(40),
            const CustomReminderWidget(),
            verticalSpace(32),
            const CustomTrackerWidget(),
            verticalSpace(32),
            const CustomContainerOfTextAndButton(
              text: 'Compare my phone',
              buttonText: 'Compare',
            ),
            verticalSpace(32),
            const CustomRowOfTwoText(
              boldText: 'Gallery',
              normalText: 'see more',
            ),
            verticalSpace(24),
            const CustomHistoryAndGallery(
              history: '2 June',
              galleryList: galleryImageList,
            ),
            verticalSpace(8),
            const CustomHistoryAndGallery(
              history: '2 June',
              galleryList: galleryImageList2,
            ),
          ],
        ),
      ),
    );
  }
}

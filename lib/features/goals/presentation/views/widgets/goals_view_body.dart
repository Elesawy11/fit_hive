import 'package:fit_hive/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../core/helpers/spacers.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import 'goals_upper_text.dart';
import 'stacked_card.dart';

class GoalsViewBody extends StatelessWidget {
  const GoalsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: verticalSpace(40),
          ),
          Positioned(
            top: 40.h,
            child: const GoalsUpperText(
              firstText: 'What\'s your goal?',
              secondText: 'It will help us to choose a best \nprogram for you',
            ),
          ),
          StackedCards(
            screenHeight: MediaQuery.of(context).size.height,
            screenWidth: MediaQuery.of(context).size.width,
          ),
          Positioned(
            bottom: 40.h,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: CustomTextbutton(
                text: 'Confirm',
                onPressed: () => Get.offAndToNamed(Routes.registerSuccessView),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: verticalSpace(40),
          ),
        ],
      ),
    );
  }
}

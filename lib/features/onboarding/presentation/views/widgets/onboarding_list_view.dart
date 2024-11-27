import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacers.dart';
import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';
import '../constatnts.dart';

class OnbaordingListView extends StatelessWidget {
  const OnbaordingListView({
    super.key, required this.controller,
  });
final ScrollController controller ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: ListView.builder(
        controller: controller,
        itemExtent: MediaQuery.of(context).size.width,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: onboardingList.length,
        itemBuilder: (context, index) {
          return OnboardingListViewElement(
            image: onboardingList[index][0],
            title: onboardingList[index][1],
            subTitle: onboardingList[index][2],
          );
        },
      ),
    );
  }
}

class OnboardingListViewElement extends StatelessWidget {
  const OnboardingListViewElement({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        verticalSpace(20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: FontStyles.font24Bold().copyWith(
                  color: ColorHelper.color1D1(),
                ),
              ),
              Text(
                subTitle,
                style: FontStyles.font14Regular().copyWith(
                  color: ColorHelper.color7B6(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

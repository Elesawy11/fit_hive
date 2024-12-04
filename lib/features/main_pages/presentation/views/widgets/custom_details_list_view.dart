import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDetailsListView extends StatelessWidget {
  const CustomDetailsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: ListView.builder(
          itemCount: detailsList.length,
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(right: 24.w),
            child: CustomListViewDetailsItem(
              topText: detailsList[index][0],
              downText: detailsList[index][1],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomListViewDetailsItem extends StatelessWidget {
  const CustomListViewDetailsItem({
    super.key,
    required this.topText,
    required this.downText,
  });
  final String topText, downText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.r,
      height: 80.r,
      decoration: BoxDecoration(
          border: Border.all(
            color: ColorHelper.colorB8C(),
          ),
          borderRadius: BorderRadius.circular(16.r)),
      child: Padding(
        padding: EdgeInsets.all(12.r),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                topText,
                style: FontStyles.font14Medium().copyWith(
                  color: ColorHelper.color9DC(),
                ),
              ),
              verticalSpace(6),
              Text(
                downText,
                style: FontStyles.font12Regular().copyWith(
                  color: ColorHelper.color7B6(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const List<List<String>> detailsList = [
  [
    '180cm',
    'Height',
  ],
  [
    '65kg',
    'Weight',
  ],
  [
    '22yo',
    'Agee',
  ],
];

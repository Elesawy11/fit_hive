import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/assets/assets.dart';

class CustomLatestWorkListItem extends StatelessWidget {
  const CustomLatestWorkListItem({
    super.key,
    required this.image,
    required this.firstText,
    required this.secondText,
    required this.value,
  });
  final String image, firstText, secondText;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 18.h),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstText,
                  style: FontStyles.font12Medium().copyWith(
                    color: ColorHelper.mainColor(),
                  ),
                ),
                verticalSpace(6),
                Text(
                  secondText,
                  style: FontStyles.font12Regular().copyWith(
                    color: ColorHelper.secondaryColor(),
                  ),
                ),
                verticalSpace(6),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: LinearProgressIndicator(
                    minHeight: 8.h,
                    value: value,
                    color: ColorHelper.color645(),
                    backgroundColor: ColorHelper.colorB8C(),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              Assets.assetsIconsExpandCircleRight,
              width: 24.r,
              height: 24.r,
              colorFilter: ColorFilter.mode(
                ColorHelper.color844(),
                BlendMode.srcIn,
              ),
            )
          ],
        ),
      ),
    );
  }
}

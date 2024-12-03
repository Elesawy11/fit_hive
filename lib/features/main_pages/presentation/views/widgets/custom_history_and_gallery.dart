import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:flutter/material.dart';

import 'custom_gallery_image_list.dart';

class CustomHistoryAndGallery extends StatelessWidget {
  const CustomHistoryAndGallery({
    super.key,
    required this.history,
    required this.galleryList,
  });
  final String history;
  final List<String> galleryList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          history,
          style: FontStyles.font12Regular().copyWith(
            color: ColorHelper.color7B6(),
          ),
        ),
        verticalSpace(8),
        CustomGalleryImageList(
          galleryList: galleryList,
        )
      ],
    );
  }
}

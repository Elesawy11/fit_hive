import 'package:fit_hive/core/assets/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomGalleryImageList extends StatelessWidget {
  const CustomGalleryImageList({
    super.key,
    required this.galleryList,
  });
  final List<String> galleryList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100.h,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: galleryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: CustomGalleryImage(
              image: galleryList[index],
            ),
          );
        },
      ),
    );
  }
}

class CustomGalleryImage extends StatelessWidget {
  const CustomGalleryImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: Image.asset(
        image,
        width: 100.r,
        height: 100.r,
      ),
    );
  }
}

const List<String> galleryImageList = [
  Assets.assetsImagesRectangle1,
  Assets.assetsImagesRectangle2,
  Assets.assetsImagesRectangle3,
  Assets.assetsImagesRectangle4,
];
const List<String> galleryImageList2 = [
  Assets.assetsImagesRectangle5,
  Assets.assetsImagesRectangle6,
  Assets.assetsImagesRectangle7,
  Assets.assetsImagesRectangle2,
];

import 'package:fit_hive/core/assets/assets.dart';
import 'package:flutter/material.dart';

import 'custom_latest_work_list_item.dart';

class CustomLatestWorkListView extends StatelessWidget {
  const CustomLatestWorkListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: latestWorkList.length,
      itemBuilder: (context, index) {
        return CustomLatestWorkListItem(
          image: latestWorkList[index][0],
          firstText: latestWorkList[index][1],
          secondText: latestWorkList[index][2],
          value: latestWorkList[index][3],
        );
      },
    );
  }
}

List<List<dynamic>> latestWorkList = [
  [
    Assets.assetsImagesWorkoutPic1,
    'Fullbody Workout',
    '180 Calories Burn | 20minutes',
    0.25,
  ],
  [
    Assets.assetsImagesWorkoutPic2,
    'Lowerbody Workout',
    '200 Calories Burn | 30minutes',
    0.75,
  ],
  [
    Assets.assetsImagesWorkoutPic3,
    'Ab Workout',
    '180 Calories Burn | 20minutes',
    0.15,
  ]
];

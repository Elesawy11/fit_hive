import 'package:flutter/material.dart';

import '../../../../../core/assets/assets.dart';
import '../../../../../core/helpers/spacers.dart';
import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class CustomCardWidget extends StatelessWidget {
  final int index;

  const CustomCardWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        // width: 250,
        // height: 150,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              ColorHelper.color9DC(),
              ColorHelper.color92A(),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
            child: Column(
          children: [
            verticalSpace(12),
            Image.asset(
              Assets.assetsImagesGoal1,
            ),
            verticalSpace(24),
            Text(
              "Improve Shape",
              // strutStyle: StrutStyle(height: 20),
              style: FontStyles.font16Bold().copyWith(
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid,
                decorationColor: Colors.white,
                // decorationThickness: 4,
                color: Colors.white,
              ),
            ),
            verticalSpace(24),
            Text(
              'I want to build more muscles',
              style: FontStyles.font16Regular().copyWith(
                color: Colors.white,
              ),
            ),
            verticalSpace(24),
          ],
        )),
      ),
    );
  }
}

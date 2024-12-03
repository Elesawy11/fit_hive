import 'package:flutter/material.dart';
import '../../../../../core/helpers/spacers.dart';
import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget(
      {super.key,
      required this.image,
      required this.topText,
      required this.underText});
  final String image, topText, underText;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.6,
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
        child: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(12),
              Image.asset(
                image,
              ),
              verticalSpace(24),
              Text(
                topText,
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
                underText,
                textAlign: TextAlign.center,
                style: FontStyles.font16Regular().copyWith(
                  color: Colors.white,
                ),
              ),
              verticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}

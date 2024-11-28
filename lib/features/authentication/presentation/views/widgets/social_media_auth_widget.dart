import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/assets.dart';
import '../../../../../core/helpers/spacers.dart';
import '../../../../../core/theming/color_helper.dart';

class SocialMediaAuthWidget extends StatelessWidget {
  const SocialMediaAuthWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AuthSocialMediaIcon(
          image: Assets.assetsImagesGoogleIcon,
        ),
        horizontalSpace(24),
        const AuthSocialMediaIcon(
          image: Assets.assetsImagesFacebookIcon,
        ),
      ],
    );
  }
}

class AuthSocialMediaIcon extends StatelessWidget {
  const AuthSocialMediaIcon({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorHelper.colorB8C(),
        ),
        borderRadius: BorderRadius.circular(26.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(26.r),
        child: Image.asset(
          image,
          width: 24.r,
          height: 24.r,
        ),
      ),
    );
  }
}

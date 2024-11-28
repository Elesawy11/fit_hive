import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacers.dart';
import '../../../../../core/theming/color_helper.dart';
import '../../../../../core/theming/font_styles.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import 'already_have_account_widget.dart';
import 'column_of_text_form_field.dart';
import 'row_of_dividers_and_text.dart';
import 'row_of_icon_button_and_text.dart';
import 'social_media_auth_widget.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'Hey there,',
              style: FontStyles.font16Regular()
                  .copyWith(color: ColorHelper.secondaryColor()),
            ),
            Text(
              'Create an account',
              style: FontStyles.font20Bold()
                  .copyWith(color: ColorHelper.mainColor()),
            ),
            verticalSpace(40),
            const ColumnOfTextFormField(),
            const RowOfIconButtonAndText(),
            verticalSpace(40),
            CustomTextbutton(
              text: 'Register',
              onPressed: () {},
            ),
            verticalSpace(24),
            const RowOfDividersAndText(),
            verticalSpace(24),
            const SocialMediaAuthWidget(),
            verticalSpace(24),
            const AlreadyHaveAccountWidget(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

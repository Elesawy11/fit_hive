import 'package:fit_hive/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../core/helpers/spacers.dart';
import '../../../../../core/widgets/custom_text_button.dart';
import 'already_have_account_widget.dart';
import 'auth_upper_text.dart';
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
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const AuthUpperText(
                  firstText: 'Hey there,',
                  secondText: 'Create an account',
                ),
                verticalSpace(40),
                const ColumnOfTextFormField(),
                const RowOfIconButtonAndText(),
                verticalSpace(40),
                CustomTextbutton(
                  text: 'Register',
                  onPressed: () => Get.offAndToNamed(Routes.goalsView),
                ),
                verticalSpace(24),
                const RowOfDividersAndText(),
                verticalSpace(24),
                const SocialMediaAuthWidget(),
                verticalSpace(24),
                AlreadyHaveAccountWidget(
                  text: 'Already have an account?',
                  operat: ' Login',
                  onTap: () => Get.toNamed(Routes.loginView),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

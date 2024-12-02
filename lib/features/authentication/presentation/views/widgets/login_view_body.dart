import 'package:fit_hive/core/helpers/spacers.dart';
import 'package:fit_hive/core/theming/color_helper.dart';
import 'package:fit_hive/core/theming/font_styles.dart';
import 'package:fit_hive/core/utils/routes.dart';
import 'package:fit_hive/core/widgets/custom_text_button.dart';
import 'package:fit_hive/core/widgets/custom_text_form_field.dart';
import 'package:fit_hive/features/authentication/presentation/views/widgets/already_have_account_widget.dart';
import 'package:fit_hive/features/authentication/presentation/views/widgets/auth_upper_text.dart';
import 'package:fit_hive/features/authentication/presentation/views/widgets/column_of_text_form_field.dart';
import 'package:fit_hive/features/authentication/presentation/views/widgets/row_of_dividers_and_text.dart';
import 'package:fit_hive/features/authentication/presentation/views/widgets/social_media_auth_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(24.r),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const AuthUpperText(
                  firstText: 'Hey there,',
                  secondText: 'Welcome Back',
                ),
                verticalSpace(24),
                CustomTextFormField(
                  hintText: 'Email',
                  validator: (value) {},
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                  ),
                ),
                verticalSpace(16),
                const CustomObsecureTextField(),
                verticalSpace(16),
                Text(
                  'Forgot your password?',
                  style: FontStyles.font10Medium().copyWith(
                    color: ColorHelper.colorADA(),
                  ),
                ),
                verticalSpace(40),
                CustomTextbutton(
                  text: 'Login',
                  onPressed: () => Get.offAndToNamed(Routes.mainView),
                ),
                verticalSpace(24),
                const RowOfDividersAndText(),
                verticalSpace(24),
                const SocialMediaAuthWidget(),
                verticalSpace(24),
                AlreadyHaveAccountWidget(
                  text: 'Don\'t have an account yet?',
                  operat: ' Register',
                  onTap: () => Get.toNamed(Routes.registerView),
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

import 'package:fit_hive/core/utils/routes.dart';
import 'package:fit_hive/features/onboarding/presentation/cubits/scroll_cubit/scroll_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'onboarding_circuler_button.dart';
import 'onboarding_list_view.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScrollCubit, ScrollState>(
      listener: (context, state) {
        if (state is ScrollFinish) {
          Get.toNamed(Routes.registerView);
        }
      },
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              OnbaordingListView(
                controller: context.read<ScrollCubit>().controller,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 24.w, bottom: 32.h),

                  child: OnboardingCirculerButton(
                    progress: state is ScrollIncrease ? state.progress : 0.25,
                  ),
                  // child:
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

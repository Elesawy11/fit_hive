import 'package:fit_hive/features/onboarding/presentation/cubits/scroll_cubit/scroll_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/color_helper.dart';
import 'circule_button.dart';

class OnboardingCirculerButton extends StatelessWidget {
  const OnboardingCirculerButton({super.key, required this.progress});
  final double progress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<ScrollCubit>().scroll(),
      child: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const CirculerButton(
              child: Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 68.r,
              width: 68.r,
              child: CircularProgressIndicator(
                backgroundColor: ColorHelper.colorB8C(),
                color: ColorHelper.color92A(),
                strokeWidth: 3,
                value: progress,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:fit_hive/features/goals/presentation/views/widgets/goals_upper_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_card_widget.dart';

class GoalsView extends StatelessWidget {
  const GoalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.r),
          child: const Column(
            children: [
              Spacer(
                flex: 1,
              ),
              GoalsUpperText(
                firstText: 'What\'s your goal?',
                secondText:
                    'It will help us to choose a best \nprogram for you',
              ),
              Spacer(
                flex: 2,
              ),
              CustomCardWidget(index: 1),
              Spacer(
                flex: 2,
              ),
              Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:fit_hive/features/goals/presentation/views/widgets/goals_upper_text.dart';
import 'package:flutter/material.dart';

class GoalsView extends StatelessWidget {
  const GoalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            GoalsUpperText(
              firstText: 'What\'s your goal?',
              secondText: 'It will help us to choose a best \nprogram for you',
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

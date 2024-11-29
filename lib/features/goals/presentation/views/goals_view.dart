import 'package:fit_hive/features/goals/presentation/views/widgets/goals_upper_text.dart';
import 'package:flutter/material.dart';

import 'widgets/stacked_card.dart';

class GoalsView extends StatelessWidget {
  const GoalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            // StackedCards()
            Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            const GoalsUpperText(
              firstText: 'What\'s your goal?',
              secondText: 'It will help us to choose a best \nprogram for you',
            ),
            const Spacer(
              flex: 2,
            ),
            // CustomCardWidget(),
            StackedCards(
              screenHeight: MediaQuery.of(context).size.height,
              screenWidth: MediaQuery.of(context).size.width,
            ),
            const Spacer(
              flex: 2,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}

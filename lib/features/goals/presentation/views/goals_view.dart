import 'package:flutter/material.dart';
import 'widgets/goals_view_body.dart';

class GoalsView extends StatelessWidget {
  const GoalsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoalsViewBody(),
    );
  }
}

import 'package:fit_hive/features/onboarding/presentation/cubits/scroll_cubit/scroll_cubit.dart';
import 'package:flutter/material.dart';
import 'widgets/onboarding_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => ScrollCubit(context),
        child: const OnboardingBody(),
      ),
    );
  }
}

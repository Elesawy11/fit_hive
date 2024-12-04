import 'package:fit_hive/features/main_pages/presentation/views/home_view.dart';
import 'package:fit_hive/features/main_pages/presentation/views/profile_view.dart';
import 'package:fit_hive/features/main_pages/presentation/views/progress_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/naivigation_cubit/navigation_bar_cubit.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarCubit, int>(
      builder: (context, state) {
        return [
          const HomeView(),
          const ProgressView(),
          const ProfileView(),
        ].elementAt(state);
      },
    );
  }
}

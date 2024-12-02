import 'package:fit_hive/features/main_pages/presentation/views/home_view.dart';
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
          const Center(
              child: Text(
            'Progress Tracker',
            style: TextStyle(fontSize: 36),
          )),
          const Center(
              child: Text(
            'Profile',
            style: TextStyle(fontSize: 36),
          )),
        ].elementAt(state);
      },
    );
  }
}

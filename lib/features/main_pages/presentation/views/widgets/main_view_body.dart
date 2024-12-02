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
          Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            body: const Center(
                child: Text(
              'Home',
              style: TextStyle(fontSize: 36),
            )),
          ),
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

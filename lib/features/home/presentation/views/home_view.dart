import 'package:fit_hive/features/home/presentation/cubits/naivigation_cubit/navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBarCubit(),
      child: Scaffold(bottomNavigationBar: BlocBuilder<NavigationBarCubit, int>(
        builder: (context, state) {
          final currentIndex = state;
          return BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              context.read<NavigationBarCubit>().navigateToIndex(index: index);
            },
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.photo_camera_outlined),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'home',
              ),
            ],
          );
        },
      ), body: BlocBuilder<NavigationBarCubit, int>(
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
              'Photo',
              style: TextStyle(fontSize: 36),
            )),
            const Center(
                child: Text(
              'Profile',
              style: TextStyle(fontSize: 36),
            )),
          ].elementAt(state);
        },
      )),
    );
  }

  BottomNavigationBarItem bootmNavigationBarItem({
    required Widget icon,
    required String label,
    // required int index,
  }) {
    return BottomNavigationBarItem(
      icon: icon,
      label: label,
    );
  }
}

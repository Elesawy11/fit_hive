import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/naivigation_cubit/navigation_bar_cubit.dart';

class CustomBottomNavigationBarWidget extends StatelessWidget {
  const CustomBottomNavigationBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBarCubit, int>(
      builder: (context, state) {
        final currentIndex = state;
        return BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            context.read<NavigationBarCubit>().navigateToIndex(index: index);
          },
          currentIndex: currentIndex,
          items: [
            bootmNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: 'Home',
            ),
            bootmNavigationBarItem(
              icon: const Icon(Icons.photo_camera_outlined),
              label: 'Progress Tracker',
            ),
            bootmNavigationBarItem(
              icon: const Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        );
      },
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

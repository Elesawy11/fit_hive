import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          iconSize: 28.r,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) {
            context.read<NavigationBarCubit>().navigateToIndex(index: index);
          },
          currentIndex: currentIndex,
          items: [
            bottmNavigationBarItem(
              currentIndex: currentIndex,
              selectedIcon: const Icon(Icons.home),
              index: 0,
              icon: const Icon(Icons.home_outlined),
              label: 'Home',
            ),
            bottmNavigationBarItem(
              currentIndex: currentIndex,
              index: 1,
              selectedIcon: const Icon(Icons.photo_camera),
              icon: const Icon(Icons.photo_camera_outlined),
              label: 'Progress Tracker',
            ),
            bottmNavigationBarItem(
              currentIndex: currentIndex,
              index: 2,
              selectedIcon: const Icon(Icons.person),
              icon: const Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }

  BottomNavigationBarItem bottmNavigationBarItem({
    required Widget icon,
    required Widget selectedIcon,
    required String label,
    required int index,
    required int currentIndex,
  }) {
    return BottomNavigationBarItem(
      icon: currentIndex == index ? selectedIcon : icon,
      label: label,
    );
  }
}

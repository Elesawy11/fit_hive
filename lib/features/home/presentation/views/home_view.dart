import 'package:fit_hive/features/home/presentation/cubits/naivigation_cubit/navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBarCubit(),
      child: BlocBuilder<NavigationBarCubit, NavigationBarState>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: (index) {
                  context
                      .read<NavigationBarCubit>()
                      .navigateToIndex(index: index);
                },
                currentIndex: context.read<NavigationBarCubit>().currentIndex,
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
                ]),
            body: [
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
            ].elementAt(context.read<NavigationBarCubit>().currentIndex),
          );
        },
      ),
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

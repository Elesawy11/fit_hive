import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) {
            currentIndex = value;
            setState(() {});
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
      ].elementAt(currentIndex),
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

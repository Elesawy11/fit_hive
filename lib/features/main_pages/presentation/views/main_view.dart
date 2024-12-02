import 'package:fit_hive/features/main_pages/presentation/cubits/naivigation_cubit/navigation_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/custom_bottom_navigation_bar_widget.dart';
import 'widgets/main_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBarCubit(),
      child: const Scaffold(
        bottomNavigationBar: CustomBottomNavigationBarWidget(),
        body: MainViewBody(),
      ),
    );
  }
}

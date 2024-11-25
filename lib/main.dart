import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/welcome/presentation/welcome_view.dart';

void main(List<String> args) {
  runApp(const FitHive());
}

class FitHive extends StatelessWidget {
  const FitHive({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize:  Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child:  GetMaterialApp(
        home: WelcomeView(),
      ),
      );
  }
}
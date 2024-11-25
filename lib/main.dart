import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/helpers/change_system_ui_mode.dart';
import 'features/welcome/presentation/welcome_view.dart';

void main(List<String> args) {
  runApp(const FitHive());
}

class FitHive extends StatelessWidget {
  const FitHive({super.key});

  @override
  Widget build(BuildContext context) {
    changeSystemUiMode();

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: const WelcomeView(),
      ),
    );
  }
}

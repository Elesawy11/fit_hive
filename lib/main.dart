import 'package:fit_hive/core/utils/routes.dart';
import 'package:fit_hive/core/utils/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/helpers/change_system_ui_mode.dart';

void main(List<String> args) {
  Bloc.observer = SimpleBlocObserver();
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
        initialRoute: '/',
        getPages: getPageList,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/modules/dashboard/home/view/admin_home.dart';

import '../helpers/binding_helper.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1728, 1117),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            initialRoute: AppPages.initial,
            getPages: AppPages.pages,
            enableLog: true,
            debugShowCheckedModeBanner: false,
            title: 'KickBall',
            theme: AppThemes.appTheme,
            home: const AdminHome(),
          );
        });
  }
}

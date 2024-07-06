import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/router/app_router.dart';
import 'core/theme/theme_data_style.dart';

class ClinicAEDC extends StatelessWidget {
  const ClinicAEDC({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp.router(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'AEDC Clinic',
        themeMode: ThemeMode.system,
        theme: ThemeDataStyle.light,
        darkTheme: ThemeDataStyle.dark,
        routerConfig: AppRouter.router,
      ),
    );
  }
}

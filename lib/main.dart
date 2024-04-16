import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_navigator.dart';
import 'core/routing/app_route.dart';
import 'core/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          // locale: DevicePreview.locale(context),
          builder: (context, _) {
            var child = _!;
            // child = DevicePreview.appBuilder(context, _);
            // child = Toast(navigatorKey: AppNavigator.navigatorKey, child: child);
            return child;
          },
          theme: AppThemeUtil.lightTheme,
          initialRoute: AppRoute.transaction,
          onGenerateRoute: AppNavigator.generateRoute,
          navigatorKey: AppNavigator.navigatorKey,
        );
      },
    );
  }
}

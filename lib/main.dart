import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/routing/app_navigator.dart';
import 'core/routing/app_route.dart';
import 'core/utils/app_theme.dart';
import 'features/home/view_model/buttom_nav_view_model.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MultiProvider(
        providers: [
          ChangeNotifierProvider<BottomNavViewModel>(create: (context) => BottomNavViewModel()),
        ],
        child: const MyApp(),
      ),
    ),
  );
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
          builder: (context, _) {
            var child = _!;
            return child;
          },
          theme: AppThemeUtil.lightTheme,
          initialRoute: AppRoute.homeScreen,
          onGenerateRoute: AppNavigator.generateRoute,
          navigatorKey: AppNavigator.navigatorKey,
        );
      },
    );
  }
}

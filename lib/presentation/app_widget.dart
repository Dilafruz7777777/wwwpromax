import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wwwpromax/presentation/pages/auth/onboarding/onboard1.dart';
import 'package:wwwpromax/presentation/pages/auth/splash_screen.dart';
class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            home: SplashScreen(),
            // theme: mainTheme,
          );
        }
    );

  }
}
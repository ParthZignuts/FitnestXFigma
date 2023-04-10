import 'package:fitnestx/app/screens/onboard/onboardscreen.dart';
import 'package:fitnestx/app/screens/splash/splashscreen.dart';
import 'package:fitnestx/theme/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'core/provider/onboarding_screen_provider.dart';

class FitnestX extends StatelessWidget {
  const FitnestX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => OnboardingScreenProvider(),
            ),
          ],
          child: GetMaterialApp(
            theme: ThemeData(
              primaryColor: AppColor.blueLinear1,
            ),
            title: 'FitnestX',
            debugShowCheckedModeBanner: false,
            routes: {
              '/onboard': (context) => const OnboardScreen(),
              '/': (context) => const SplashScreen(),
            },
            initialRoute: '/',
          ),
        );
      },
    );
  }
}

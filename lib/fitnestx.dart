import 'package:fitnestx/core/provider/provider.dart';
import 'package:fitnestx/theme/app_color.dart';
import './app/app.dart';

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
            ChangeNotifierProvider(
              create: (context) => SignupScreenProvider(),
            ),
            ChangeNotifierProvider(create: (context) => ActivityTrackerProcider(),),
            ChangeNotifierProvider(create: (context) => HomeScreenProvider(),)
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
              // '/': (context) => const MainScreen(),
            },
            initialRoute: '/',
          ),
        );
      },
    );
  }
}

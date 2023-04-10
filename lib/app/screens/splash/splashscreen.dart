import 'dart:async';
import 'package:get/get.dart';

import '../../../theme/theme.dart';
import '../screens.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            () =>Get.offAll(const WelcomeScreen()));
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
         gradient: LinearGradient(colors: [AppColor.blueLinear1,AppColor.blueLinear2]),
        ),
        child: Center(
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}

import 'package:fitnestx/app/screens/signup/signup_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../core/provider/onboarding_screen_provider.dart';
import '../app.dart';

class OnboardNextScreenBtn extends StatelessWidget {
  const OnboardNextScreenBtn({
    super.key,
    required this.provider,
  });

  final OnboardingScreenProvider provider;

  @override
  Widget build(BuildContext context) {
    return Consumer<OnboardingScreenProvider>(
        builder: (BuildContext context, value, Widget? child) {
      return Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 40.0.sp, right: 35.0.sp),
          child: GestureDetector(
            onTap: () {
              if (provider.pageIndex < 3) {
                provider.pageIndex++;
                provider.onTabChanged();
              }
              else
              {
                Get.to(const SignUpScreen());
              }
            },
            child: CircleAvatar(
              radius: 25.0.sp,
              child: Image.asset('assets/images/rightArrow.png'),
            ),
          ),
        ),
      );
    });
  }
}


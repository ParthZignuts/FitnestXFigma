import '../app.dart';
import '../../core/provider/provider.dart';

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
          padding: const EdgeInsets.only(bottom: 40.0, right: 35.0).r,
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
              radius: 25.0.r,
              child: Image.asset('assets/images/rightArrow.png'),
            ),
          ),
        ),
      );
    });
  }
}


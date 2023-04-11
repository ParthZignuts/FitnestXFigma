import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/provider/provider.dart';
import '../../../theme/theme.dart';
import '../../app.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider =
        Provider.of<OnboardingScreenProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: provider.pageController,
              children: const [
                DetailsOnOnboardScreen(
                    imgSrc: 'assets/images/onboardscreen1.png',
                    mainContent: 'Track  Your Goal',
                    description:
                        'Don\'t worry if you have trouble determining\nyour goals, We can help you determine your\ngoals and track your goals'),
                DetailsOnOnboardScreen(
                    imgSrc: 'assets/images/onboardscreen2.png',
                    mainContent: 'Get Burn',
                    description:
                        'Let\'s keep burning, to achive yours goals, it\nhurts only temporarily, if you give up now\nyou will be in pain forever'),
                DetailsOnOnboardScreen(
                    imgSrc: 'assets/images/onboardscreen4.png',
                    mainContent: 'Eat Well',
                    description:
                        'Let\'s start a healthy lifestyle with us,we\ncan determine your diet every day.healthy \neating is fun'),
                DetailsOnOnboardScreen(
                    imgSrc: 'assets/images/onboardscreen3.png',
                    mainContent: 'Improve Sleep \nQuality',
                    description:
                        'Improve the quality of your sleep withus,\ngood quality sleep can bring a good mood \nin the morning '),
              ],
              onPageChanged: (int index) {
                provider.pageIndex = index;
                provider.onTabChanged();
              },
            ),
          ),
          SmoothPageIndicator(
            controller: provider.pageController,
            count: 4,
            effect:  const JumpingDotEffect(
              dotColor: AppColor.blueLinear1,
              activeDotColor: AppColor.purple,
              dotHeight: 12.0,
              dotWidth: 12.0,
              verticalOffset: 20,
            ),
          ),
          OnboardNextScreenBtn(provider: provider),
        ],
      ),
    );
  }
}

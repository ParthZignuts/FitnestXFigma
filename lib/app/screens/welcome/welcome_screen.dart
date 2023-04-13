import 'package:get/get.dart';
import '../../../theme/theme.dart';
import '../../app.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/FitnestX.png'),
                   SizedBox(
                    height: 10.0.h,
                  ),
                  Text(
                    'Everybody Can Train',
                    style: TextStyles.h2Normal
                        .copyWith(fontFamily: 'Poppins', color: AppColor.gray),
                  ),
                ],
              ),
            ),
            const Spacer(),
             CustomSubmitButton(onPressed: ()=>Get.offAll(const OnboardScreen()),title: 'Get Started'),
          ],
        ),
      ),
    );
  }
}

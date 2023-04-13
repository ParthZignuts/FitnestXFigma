import '../../app.dart';
import '../../../core/provider/provider.dart';
import '../../../theme/theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0).r,
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      'Hey There',
                      style:
                          TextStyles.h3Normal.copyWith(fontFamily: 'Poppins'),
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyles.h2Bold.copyWith(fontFamily: 'Poppins'),
                    ),
                  ],
                ),
                Padding(padding: const EdgeInsets.only(top: 30.0).r),
                const InputFormField(
                  hintText: 'Email',
                  icon: Icon(
                    Icons.email_outlined,
                    color: AppColor.blueLinear1,
                  ),
                  obscureText: false,
                  visibilityIcon: false,
                ),
                const InputFormField(
                  hintText: 'Password',
                  icon: Icon(
                    Icons.lock_outline,
                    color: AppColor.blueLinear1,
                  ),
                  obscureText: true,
                  visibilityIcon: true,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot your pssword?',
                    style: TextStyles.p2Bold.copyWith(
                      decoration: TextDecoration.underline,
                      color: AppColor.gray,
                    ),
                  ),
                ),
                const Spacer(),
                CustomSubmitButton(
                  onPressed: () => Get.offAll(const RegistattionSuccessScreen()),
                  title: 'Login',
                ),
                TextDivider.horizontal(
                    text: const Text(
                      'OR',
                    ),
                    color: AppColor.blueLinear2),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomIconBtn(
                          imgUrl: 'assets/images/google.png', onPressed: () {}),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0).r,
                        child: CustomIconBtn(
                            imgUrl: 'assets/images/facebook.png',
                            onPressed: () {}),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0, top: 25.0).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account yet? ',
                        style: TextStyles.h3Bold,
                      ),
                      GestureDetector(
                          onTap: () => Get.offAll(const SignUpScreen()),
                          child: Text(
                            'Register',
                            style: TextStyles.h3Bold
                                .copyWith(color: AppColor.purple),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

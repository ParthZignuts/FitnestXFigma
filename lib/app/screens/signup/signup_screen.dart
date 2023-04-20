import '../../app.dart';
import '../../../core/provider/provider.dart';
import '../../../theme/theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0).r,
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
                      'Create an Account',
                      style: TextStyles.h2Bold.copyWith(fontFamily: 'Poppins'),
                    ),
                  ],
                ),
                const Spacer(),
                const InputFormField(
                    hintText: 'First name',
                    icon: Icon(
                      Icons.person_outline,
                      color: AppColor.blueLinear1,
                    ),
                    maxLength: 30,
                    textInputType: TextInputType.text,
                    obscureText: false,
                    visibilityIcon: false),
                const InputFormField(
                  hintText: 'Last name',
                  icon: Icon(
                    Icons.person_outline,
                    color: AppColor.blueLinear1,
                  ),
                  maxLength: 30,
                  textInputType: TextInputType.text,
                  obscureText: false,
                  visibilityIcon: false,
                ),
                const InputFormField(
                  hintText: 'Email',
                  icon: Icon(
                    Icons.email_outlined,
                    color: AppColor.blueLinear1,
                  ),
                  obscureText: false,
                  visibilityIcon: false,
                  maxLength: 30,
                  textInputType: TextInputType.emailAddress,
                ),
                const InputFormField(
                  hintText: 'Password',
                  icon: Icon(
                    Icons.lock_outline,
                    color: AppColor.blueLinear1,
                  ),
                  obscureText: true,
                  visibilityIcon: true,
                  maxLength: 30,
                  textInputType: TextInputType.text,
                ),
                Row(
                  children: [
                    Consumer<SignupScreenProvider>(
                      builder: (context, value, child) {
                        return Checkbox(
                          value: value.rememberMe,
                          onChanged: (values) =>
                              value.onRememberMeChanged(values!),
                          fillColor:
                              MaterialStateProperty.all(AppColor.blueLinear1),
                        );
                      },
                    ),
                    const Text(
                      'By Continuing you accept our Privacy Policy and\nTerm of Use',
                      style: TextStyles.p3Normal,
                    )
                  ],
                ),
                const Spacer(),
                CustomSubmitButton(
                  onPressed: () => Get.offAll(const SignUpScreen2()),
                  title: 'Register',
                ),
                TextDivider.horizontal(
                    text: const Text(
                      'OR',
                    ),
                    color: AppColor.blueLinear2),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconBtn(
                        imgUrl: 'assets/images/glogo.svg', onPressed: () {}),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0).r,
                      child: CustomIconBtn(
                          imgUrl: 'assets/images/flogo.svg', onPressed: () {}),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0).r,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already  have an account? ',
                        style: TextStyles.h3Bold,
                      ),
                      GestureDetector(
                          onTap: () => Get.offAll(const LoginScreen()),
                          child: Text(
                            'Login',
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

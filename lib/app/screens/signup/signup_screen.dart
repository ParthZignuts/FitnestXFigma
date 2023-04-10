import 'package:fitnestx/app/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../theme/app_color.dart';
import '../../../theme/text_styles.dart';
import '../../widget/widget.dart';
import 'package:text_divider/text_divider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 15.0.sp, right: 15.0.sp),
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
                    hintText: 'First name', icon: Icon(Icons.person_outline)),
                const InputFormField(
                    hintText: 'Last name', icon: Icon(Icons.person_outline)),
                const InputFormField(
                    hintText: 'Email', icon: Icon(Icons.email_outlined)),
                const InputFormField(
                    hintText: 'Password', icon: Icon(Icons.lock_outline)),
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(
                        'By Continuing you accept our Privacy Policy  and\nTerm of Use')
                  ],
                ),
                const Spacer(),
                CustomSubmitButton(
                  onPressed: () {},
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
                    Container(
                      height: 40.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12.0.sp),
                      ),
                      child: Image.asset('assets/images/google.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0.sp),
                      child: Container(
                        height: 40.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(12.0.sp),
                        ),
                        child: Image.asset('assets/images/facebook.png'),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding:  EdgeInsets.only(bottom: 15.0.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      const Text(
                        'Already  have an account? ',
                        style: TextStyles.h3Bold,
                      ),
                      GestureDetector(
                          onTap: ()=>Get.offAll(const LoginScreen()),
                          child: Text('Login',style: TextStyles.h3Bold.copyWith(color: AppColor.purple),))
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

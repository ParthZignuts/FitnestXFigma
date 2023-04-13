import 'package:fitnestx/core/provider/provider.dart';
import '../../../theme/theme.dart';
import '../../widget/widget.dart';
import '../screens.dart';

class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({Key? key}) : super(key: key);

  static final List<String> _genderOptions = [
    'Choose Gender',
    'Male',
    'Female',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Image.asset(
            'assets/images/signupscreenvector1.png',
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0).r,
            child: const Text(
              'Let\'s complete your profile',
              style: TextStyles.h1Bold,
            ),
          ),
          Text(
            'It will help us to know more about you!',
            style: TextStyles.h3Normal.copyWith(color: AppColor.gray),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30.0,
              right: 30.0,
              top: 10,
            ).r,
            child: Column(
              children: [
                Consumer<SignupScreenProvider>(
                  builder: (context, value, child) {
                    return DropdownButtonFormField(
                      dropdownColor: AppColor.blueLinear1,
                      borderRadius: BorderRadius.circular(24.0).r,
                      focusColor: AppColor.white,
                      hint: const Text('Choose Gender'),
                      value: value.newGenderValue,
                      items: _genderOptions.map((gender) {
                        return DropdownMenuItem(
                          value: gender,
                          child: Text(gender),
                        );
                      }).toList(),
                      onChanged: (newValue) {},
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: AppColor.blueLinear1,
                        ),
                        border: InputBorder.none,
                      ),
                    );
                  },
                ),
                const InputFormField(
                    visibilityIcon: false,
                    obscureText: false,
                    icon: Icon(Icons.calendar_month_outlined,
                        color: AppColor.blueLinear1),
                    hintText: 'DD/MM/YY'),
                Padding(
                  padding: EdgeInsets.only(bottom: 4.0.sp),
                  child: const HeightWeightInputField(hintText: 'Your Weight',imgSrc: 'assets/images/Button-Kg.png',icon: Icons.monitor_weight_outlined),
                ),
                const HeightWeightInputField(hintText: 'Your Height',imgSrc: 'assets/images/Button-Cm.png',icon: Icons.height),
              ],
            ),
          ),
          const Spacer(),
          CustomSubmitButton(onPressed: ()=>Get.offAll(const SignUpScreen3()), title:'Next')
        ],
      ),
    );
  }
}


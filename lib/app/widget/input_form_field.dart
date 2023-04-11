import 'package:fitnestx/core/provider/provider.dart';
import 'package:fitnestx/theme/app_color.dart';
import '../screens/screens.dart';

class InputFormField extends StatelessWidget {
  const InputFormField({
    required this.hintText,
    required this.icon,
    required this.obscureText,
    required this.visibilityIcon,
    super.key,
  });

  final String hintText;
  final Icon icon;
  final bool obscureText;
  final bool visibilityIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0.sp, bottom: 5.0.sp),
      child: TextFormField(
        cursorColor: AppColor.blueLinear1,
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: AppColor.purple,
          hintText: hintText,
          prefixIcon: icon,
          suffixIcon: Consumer<SignupScreenProvider>(
            builder: (context, value, child) {
              return Visibility(
                visible: visibilityIcon,
                child: IconButton(
                    onPressed:()=>value.changePasswordVisibility() ,
                    icon: (value.isVisible)
                        ? const Icon(Icons.visibility_off,color: AppColor.blueLinear1,)
                        : const Icon(Icons.visibility,color: AppColor.blueLinear1,)),
              );
            },
          ),
        ),
        obscureText: Provider.of<SignupScreenProvider>(context).isVisible,
      ),
    );
  }
}

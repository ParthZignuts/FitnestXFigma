import 'package:fitnestx/theme/app_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/screens.dart';

class InputFormField extends StatelessWidget {
  const InputFormField({
    required this.hintText,
    required this.icon,
    super.key,
  });

  final String hintText;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0.sp, bottom: 5.0.sp),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: AppColor.purple,
          hintText: hintText,
          prefixIcon: icon,
        ),
      ),
    );
  }
}

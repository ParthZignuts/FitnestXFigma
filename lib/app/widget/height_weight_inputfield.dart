
import '../../theme/app_color.dart';
import '../app.dart';

class HeightWeightInputField extends StatelessWidget {
  const HeightWeightInputField({
    required this.hintText,
    required this.imgSrc,
    required this.icon,
    super.key,
  });

  final String hintText;
  final String imgSrc;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        prefixIcon:  Icon(
          icon,
          color: AppColor.blueLinear1,
        ),
        hintText: hintText,
        suffixIcon: Image.asset(imgSrc),
      ),
    );
  }
}
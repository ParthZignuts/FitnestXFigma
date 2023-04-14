
import '../../theme/theme.dart';
import '../app.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    required this.leadingIcon,
    required this.appbarTitle,
    required this.onPressed,
    super.key,
  });

  final String appbarTitle;
  final Widget leadingIcon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 18.0).r,
      child: Row(
        children: [
          IconButton(onPressed: onPressed, icon: leadingIcon),
          const Spacer(),
          Text(
            appbarTitle,
            style: TextStyles.h2Bold,
          ),
          const Spacer(),
          Image.asset('assets/images/Detail-Navs.png'),
        ],
      ),
    );
  }
}

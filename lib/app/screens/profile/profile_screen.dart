import 'package:fitnestx/app/app.dart';
import 'package:lottie/lottie.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/animation/27562-searching-for-profile.json'),
    );
  }
}

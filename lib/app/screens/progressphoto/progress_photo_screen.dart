import 'package:fitnestx/app/app.dart';
import 'package:lottie/lottie.dart';
class ProgressPhotoScreen extends StatelessWidget {
  const ProgressPhotoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Lottie.asset('assets/animation/42173-run-dog-run.json'),
    );
  }
}

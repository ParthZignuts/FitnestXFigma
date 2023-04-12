import 'package:fitnestx/app/app.dart';
import 'package:lottie/lottie.dart';
class ProgressReportScreen extends StatelessWidget {
  const ProgressReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/animation/119592-business-report.json'),
    );
  }
}

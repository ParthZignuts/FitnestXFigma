import 'package:fitnestx/app/app.dart';
import 'package:lottie/lottie.dart';
class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/animation/78631-searching (1).json'),
    );
  }
}

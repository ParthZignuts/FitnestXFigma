import 'package:fitnestx/app/app.dart';
import 'package:fitnestx/core/provider/provider.dart';
class HomeScreen2 extends StatelessWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<HomeScreenProvider>(context);
    return Scaffold(
      body: PageView(
        controller:provider.pageController,
        children:const <Widget> [
          HomeScreen(),
          NotificationScreen(),
        ],
          onPageChanged: (int index) => {
           provider.tabIndex = index,
            provider.onTabChanged(),
          }
      ),
    );
  }
}

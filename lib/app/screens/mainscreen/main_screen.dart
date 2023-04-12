import 'package:fitnestx/app/app.dart';
import 'package:fitnestx/theme/app_color.dart';
import 'package:fitnestx/utils/const/const_list.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  static final controller = PersistentTabController(initialIndex: 1);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      floatingActionButton: const Icon(Icons.chat),
      screens: ConstList.buildScreen,
      items: ConstList.bottomNavbarItems,
      backgroundColor: AppColor.white,
      navBarStyle: NavBarStyle.style15,
    );
  }
}

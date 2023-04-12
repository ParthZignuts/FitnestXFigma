import 'package:another_stepper/dto/stepper_data.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../../app/app.dart';
import '../../theme/theme.dart';

class ConstList {
  static final List<Widget> buildScreen = [
    const HomeScreen(),
    const ProgressPhotoScreen(),
    const SearchScreen(),
    const ProgressReportScreen(),
    const ProfileScreen(),
  ];
  static final List<PersistentBottomNavBarItem> bottomNavbarItems = [
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.home,
        color: AppColor.purple,
      ),
      inactiveIcon: const Icon(
        Icons.home,
        color: AppColor.blueLinear1,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.bar_chart,
        color: AppColor.purple,
      ),
      inactiveIcon: const Icon(
        Icons.bar_chart,
        color: AppColor.blueLinear1,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.search,
        color: AppColor.purple,
      ),
      inactiveIcon: const Icon(
        Icons.search,
        color: AppColor.blueLinear1,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.camera_alt_outlined,
        color: AppColor.purple,
      ),
      inactiveIcon: const Icon(
        Icons.camera_alt_outlined,
        color: AppColor.blueLinear1,
      ),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.person_outline,
        color: AppColor.purple,
      ),
      inactiveIcon: const Icon(
        Icons.person_outline,
        color: AppColor.blueLinear1,
      ),
    ),
  ];

  static final workOutlist = [
    'Fullboady Workout',
    'Lowerbody Workout',
    'Ab Workout',
    'Chest Workout',
  ];

  static final List<double> progressValue = [
    0.5,
    0.7,
    0.4,
    0.9,
  ];

  static final caloriesBurnList = [
    '180 Caloried Burn | 20minutes',
    '170 Caloried Burn | 15minutes',
    '200 Caloried Burn | 30minutes',
    '150 Caloried Burn | 10minutes',
  ];

  static final listOfColor = [
    AppColor.blueLinear1,
    AppColor.purpleLinear2,
  ];

  static List<StepperData> stepperData = [
    StepperData(
        title: StepperText(
          "6am - 8am",
          textStyle: TextStyles.h2Bold.copyWith(color: AppColor.gray),
        ),
        subtitle: StepperText("600ml",
            textStyle: TextStyles.p1Normal.copyWith(color: AppColor.purple)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText(
          "9am - 11am",
          textStyle: TextStyles.h2Bold.copyWith(color: AppColor.gray),
        ),
        subtitle: StepperText("500ml",
            textStyle: TextStyles.p1Normal.copyWith(color: AppColor.purple)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText(
          "11am - 2pm ",
          textStyle: TextStyles.h2Bold.copyWith(color: AppColor.gray),
        ),
        subtitle: StepperText("1000ml",
            textStyle: TextStyles.p1Normal.copyWith(color: AppColor.purple)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText(
          "2pm - 4pm",
          textStyle: TextStyles.h2Bold.copyWith(color: AppColor.gray),
        ),
        subtitle: StepperText("700ml",
            textStyle: TextStyles.p1Normal.copyWith(color: AppColor.purple)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
    StepperData(
        title: StepperText(
          "4pm - now ",
          textStyle: TextStyles.h2Bold.copyWith(color: AppColor.gray),
        ),
        subtitle: StepperText("900ml",
            textStyle: TextStyles.p1Normal.copyWith(color: AppColor.purple)),
        iconWidget: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
              color: AppColor.purple,
              borderRadius: BorderRadius.all(Radius.circular(30))),
        )),
  ];

  static final List<int> initialData = [
    72,
    75,
    73,
    75,
    77,
    71,
    74,
    76,
    79,
    77,
    76,
    74,
    77,
    75,
    78,
    76,
    79,
  ];
}
// iconWidget: Container(
// padding: const EdgeInsets.all(8),
// decoration: const BoxDecoration(
// color: AppColor.purple,
// borderRadius: BorderRadius.all(Radius.circular(30))),
// child: const Icon(Icons.circle, color: AppColor.purple),
// )

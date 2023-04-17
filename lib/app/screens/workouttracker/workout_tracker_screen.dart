import 'package:fitnestx/app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:switcher_button/switcher_button.dart';

import '../../../theme/theme.dart';
import '../../../utils/const/const_list.dart';

class WorkoutTrackerScreen extends StatelessWidget {
  const WorkoutTrackerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blueLinear2,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0).r,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.left_chevron,
                    ),
                    color: AppColor.white,
                  ),
                  const Spacer(),
                  Text(
                    'Workout Tracker',
                    style: TextStyles.h2Bold.copyWith(color: AppColor.white),
                  ),
                  const Spacer(),
                  Image.asset('assets/images/Detail-Navs.png'),
                ],
              ),
            ),
            Image.asset('assets/images/WorkoutTrackerGraph.png'),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0).w,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(24.0),
                              topLeft: Radius.circular(24.0))
                          .w),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0).r,
                        child: Container(
                          height: 3.h,
                          width: 80.w,
                          decoration:
                              const BoxDecoration(color: AppColor.blueLinear1),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0).w,
                                child: LeadingTitleAndButton(
                                    leadingTitle: 'Daily Workout Schedule',
                                    btnTitle: 'Check',
                                    onPressed: () {}),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                        top: 8.0, left: 15.0, right: 15.0)
                                    .r,
                                child: Row(
                                  children: [
                                    const Text(
                                      'Upcoming Workout',
                                      style: TextStyles.h2Bold,
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        'See more',
                                        style: TextStyles.h3Bold
                                            .copyWith(color: AppColor.gray),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 15.0)
                                    .r,
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: ConstList.workOutlist.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: Image.asset(
                                          'assets/images/Workout$index.png'),
                                      trailing: SwitcherButton(
                                        offColor: AppColor.blueLinear1,
                                        onColor: AppColor.purpleLinear2,
                                        value: true,
                                        onChange: (value) {},
                                      ),
                                      title: Text(ConstList.workOutlist[index]),
                                      subtitle: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            ConstList.caloriesBurnList[index],
                                            style: TextStyles.p3Normal,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15.0, top: 8.0)
                                        .r,
                                child: const Text(
                                  'What Do You Want to Train',
                                  style: TextStyles.h2Bold,
                                ),
                              ),
                              ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: ConstList.workOutlist.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(10.0).w,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColor.lightBlueBG,
                                        borderRadius:
                                            BorderRadius.circular(18.0).w,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10.0,bottom: 10.0).r,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    ConstList.workOutlist[index],
                                                    style: TextStyles.h3Bold,
                                                  ),

                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 5.0).r,
                                                    child: Text(
                                                      ConstList.caloriesBurnList[index],
                                                      style: TextStyles.h3Normal
                                                          .copyWith(
                                                              color: AppColor.gray),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 10.0).r,
                                                    child: Container(
                                                      height: 28.h,
                                                      width: 125.w,
                                                      decoration: BoxDecoration(
                                                        color: AppColor.white,
                                                        borderRadius:
                                                            BorderRadius.circular(24.0).w,

                                                      ),
                                                      child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                          primary: Colors.transparent,
                                                          onSurface: Colors.transparent,
                                                          shadowColor:
                                                              Colors.transparent,
                                                        ),
                                                        onPressed: () {},
                                                        child: Text(
                                                          'View More',
                                                          style: TextStyles.h3Normal
                                                              .copyWith(
                                                                  color:
                                                                      AppColor.blueLinear1),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Spacer(),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  width:70.w,
                                                  child: Image.asset(
                                                      'assets/images/WorkOutTrackerVector$index.png'),
                                                )
                                              ],
                                            ),
                                            const Spacer(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

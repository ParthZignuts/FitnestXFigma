import 'package:fitnestx/app/app.dart';
import 'package:fitnestx/core/provider/provider.dart';
import 'package:fitnestx/utils/const/const_list.dart';
import 'package:flutter/cupertino.dart';
import '../../../theme/theme.dart';

class ActivityTrackerScreen extends StatelessWidget {
  const ActivityTrackerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ActivityTrackerProcider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0).r,
          child: Column(
            children: [
              CustomAppbar(
                  leadingIcon: const Icon(CupertinoIcons.left_chevron),
                  appbarTitle: 'Activity Tracker ',
                  onPressed: () {
                    provider.showMore(false);
                    Get.offAll(const MainScreen());
                  }),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0, right: 4.0).r,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.lightBlueBG,
                            border: Border.all(color: AppColor.lightBlueBG),
                            borderRadius: BorderRadius.circular(24.0).w,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8.0)
                                        .r,
                                child: Row(
                                  children: [
                                    const Text('Today Target',
                                        style: TextStyles.h2Bold),
                                    const Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                              top: 8.0, bottom: 8.0)
                                          .r,
                                      child: Container(
                                        width: 35.0.w,
                                        height: 35.0.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0).w,
                                          gradient:
                                              const LinearGradient(colors: [
                                            AppColor.blueLinear1,
                                            AppColor.blueLinear2,
                                          ]),
                                        ),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.add,
                                            color: AppColor.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:  const EdgeInsets.only(
                                        right: 15.0, left: 15.0).r,
                                child: Row(
                                  children: const [
                                    TargetWidget(
                                        title: '8L',
                                        subTitle: 'Water Intake',
                                        imgSrc: 'assets/images/glass 1.png'),
                                    Spacer(),
                                    TargetWidget(

                                        title: '2400',
                                        subTitle: 'Foot Steps',
                                        imgSrc: 'assets/images/boots 1.png'),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0).r,
                        child: Row(
                          children: [
                            const Text(
                              'Activity Progress',
                              style: TextStyles.h2Bold,
                            ),
                            const Spacer(),
                            CheckViewMoreButton(
                                title: 'Weekly', onPressed: () {}),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/Graph.png'),
                      TitleWithViewMore(provider: provider,title: 'Latest Activity'),
                      Consumer<ActivityTrackerProcider>(
                        builder: (context, value, child) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: value.isShowMore ? 6 : 2,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Image.asset(
                                    'assets/images/Latest-Pic$index.png'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                      Icons.keyboard_arrow_right_outlined,
                                      color: AppColor.purple),
                                ),
                                title: Text(latestActivityTitle[index]),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      latestAcitivitySubtitle[index],
                                      style: TextStyles.p3Normal,
                                    ),
                                  ],
                                ),
                              );
                            },
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
    );
  }
}
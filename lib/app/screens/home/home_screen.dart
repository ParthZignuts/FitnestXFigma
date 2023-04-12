import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:fitnestx/utils/const/const_list.dart';
import '../../../theme/theme.dart';
import '../../app.dart';
import '../../widget/heartbeatchart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 15.0.sp, right: 15.0.sp),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 8.0.sp),
                        child: Text(
                          'Welcome Back,',
                          style: TextStyles.h3Normal
                              .copyWith(color: AppColor.gray),
                        ),
                      ),
                      const Text(
                        'Stefani Wong',
                        style: TextStyles.h2Bold,
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications,
                        color: AppColor.blueLinear1,
                      ))
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180.h,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/Banner.png'),
                            ),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 45.0.sp, left: 40.0.sp),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5.0.sp),
                                      child: Text(
                                        'BMI(Body Mass Index)',
                                        style: TextStyles.h2Bold
                                            .copyWith(color: AppColor.white),
                                      ),
                                    ),
                                    Text(
                                      'You have a normal  weight',
                                      style: TextStyles.h3Normal
                                          .copyWith(color: AppColor.white),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 10.0.sp),
                                      child: Container(
                                        height: 38.h,
                                        width: 120.w,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          gradient:
                                              const LinearGradient(colors: [
                                            AppColor.purpleLinear1,
                                            AppColor.purpleLinear2,
                                          ]),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.transparent,
                                            onSurface: Colors.transparent,
                                            shadowColor: Colors.transparent,
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            'View More',
                                            style: TextStyles.h3Bold.copyWith(
                                                color: AppColor.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // Image.asset(
                              //   'assets/images/Banner-Pie.png',
                              //   height: 100.h,
                              //   width: 110.w,
                              // ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.0.sp, right: 20.0.sp, bottom: 15.0.sp),
                          child: Row(
                            children: [
                              const Text(
                                'Today Target',
                                style: TextStyles.p1Bold,
                              ),
                              const Spacer(),
                              CheckViewMoreButton(
                                  title: 'Check', onPressed: () {})
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.0.sp),
                          child: const Text(
                            'Activity Status',
                            style: TextStyles.h2Bold,
                            textAlign: TextAlign.left,
                          ),
                        ),
                        const HeartbeatChart(),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.0.sp, top: 30.0.sp, right: 19.0.sp),
                          child: SizedBox(
                            height: 531.h,
                            width: 500.w,
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 35.w,
                                      height: 340.h,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.sp)),
                                        child: const RotatedBox(
                                          quarterTurns: -1,
                                          child: LinearProgressIndicator(
                                            backgroundColor: AppColor.white,
                                            color: AppColor.purpleLinear2,
                                            value: 1,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0.sp),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Water Intake',
                                        style: TextStyles.h2Bold,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 8.0.sp, bottom: 8.0.sp),
                                        child: Text(
                                          '4 Liters',
                                          style: TextStyles.h1Bold.copyWith(
                                              color: AppColor.blueLinear1),
                                        ),
                                      ),
                                      Text(
                                        'Real time updates',
                                        style: TextStyles.h2Normal
                                            .copyWith(color: AppColor.gray),
                                      ),
                                      SizedBox(
                                        height: 440.h,
                                        width: 110.w,
                                        child: AnotherStepper(
                                          activeBarColor: AppColor.purple,
                                          activeIndex: 1,
                                          inActiveBarColor:
                                              AppColor.blueLinear1,
                                          stepperList: ConstList.stepperData,
                                          stepperDirection: Axis.vertical,
                                          iconWidth: 10,
                                          iconHeight: 10,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 15.0.sp,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SleepAndCaloriesGraph(
                                        title: 'Sleep',
                                        subTitle: '8h 20m',
                                        widget: Image.asset(
                                            'assets/images/Sleep-Graph.png'),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 140.0.sp, bottom: 60.0.sp),
                                        child: const SleepAndCaloriesGraph(
                                          title: 'Calories',
                                          subTitle: '760 kCal',
                                          widget: CaloriesIndicator(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: ConstList.workOutlist.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Image.asset('assets/images/Workout$index.png'),
                              trailing: IconButton(
                                onPressed: (){},
                                icon: const Icon(Icons.keyboard_arrow_right_outlined,color: AppColor.purple),
                              ),
                              title: Text(ConstList.workOutlist[index]),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(ConstList.caloriesBurnList[index],style: TextStyles.p3Normal,),
                                  const SizedBox(height: 4),
                                   LinearProgressIndicator(
                                    value:(index/2),
                                   backgroundColor: AppColor.white,
                                    valueColor: const AlwaysStoppedAnimation<Color>(AppColor.purple,),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
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

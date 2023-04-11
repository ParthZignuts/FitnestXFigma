import 'package:fitnestx/utils/const/const_list.dart';

import '../../../theme/theme.dart';
import '../../app.dart';
import '../../widget/heartbeatchart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
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
                    padding: EdgeInsets.only(top: 10.0.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.28,
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
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.1,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
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
                              Image.asset(
                                'assets/images/Banner-Pie.png',
                                height: 100.0.h,
                                width: 110.0.w,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 15.0.sp, right: 15.0.sp, bottom: 15.0.sp),
                          child: Row(
                            children: [
                              const Text(
                                'Today Target',
                                style: TextStyles.p1Bold,
                              ),
                              const Spacer(),
                              Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.08,
                                width: MediaQuery.of(context).size.width * 0.22,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  gradient: const LinearGradient(colors: [
                                    AppColor.blueLinear1,
                                    AppColor.blueLinear2,
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
                                    'Check',
                                    style: TextStyles.h3Bold
                                        .copyWith(color: AppColor.white),
                                  ),
                                ),
                              ),
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
                        HeartbeatChart(data: initialData),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 20.0.sp),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.1,
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.sp)),
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
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Water Intake',
                                  style: TextStyles.h2Bold,
                                ),
                                Text(
                                  '4 Liters',
                                  style: TextStyles.h1Bold
                                      .copyWith(color: AppColor.blueLinear1),
                                ),
                                Text(
                                  'Real time updates',
                                  style: TextStyles.h2Normal
                                      .copyWith(color: AppColor.gray),
                                ),
                                Stepper(
                                  steps: ConstList.stepList(),
                                  physics: const ScrollPhysics(),
                                  type: StepperType.vertical,
                                  currentStep: 0,
                                ),
                              ],
                            ),
                            Column(
                              children: [],
                            ),
                          ],
                        ),
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

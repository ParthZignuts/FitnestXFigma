import 'package:fitnestx/app/app.dart';
import '../../../theme/theme.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColor.white,
            title: Text(
              'FitnestX',
              style: TextStyles.h2Bold.copyWith(color: AppColor.blueLinear1),
            ),
          ),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: AppColor.blueLinear1,
                  labelStyle: TextStyles.h2Normal,
                  tabs: [
                    Tab(
                      text: 'Workout',
                    ),
                    Tab(
                      text: 'Progress',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 35.h,
                  child: TextFormField(
                    cursorColor: AppColor.blueLinear1,
                    autofocus: false,
                    textAlign: TextAlign.justify,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.purpleLinear2),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: AppColor.blueLinear1),
                        ),
                        hintText: 'Search...',
                        contentPadding:
                            const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: AppColor.blueLinear1,
                        )),
                  ),
                ),
              ),
              const Expanded(
                child: TabBarView(children: [
                  WorkoutTrackerListView(),
                  SearchProgressList(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

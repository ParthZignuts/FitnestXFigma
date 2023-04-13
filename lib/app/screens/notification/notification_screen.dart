import 'package:fitnestx/app/app.dart';
import 'package:fitnestx/core/provider/provider.dart';
import 'package:fitnestx/utils/const/const_list.dart';
import 'package:flutter/cupertino.dart';
import '../../../theme/theme.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0).r,
          child: Column(
            children: [
              CustomAppbar(
                  leadingIcon: const Icon(CupertinoIcons.left_chevron),
                  appbarTitle: 'Notification',
                  onPressed: () => Get.offAll(const MainScreen())),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: notificationTitle.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Center(
                                  child:
                                      Image.asset('assets/images/Ellipse$index.png'),
                                );
                              },
                            );
                          },
                          child: Image.asset('assets/images/Ellipse$index.png'),
                        ),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert_outlined,
                              color: AppColor.gray),
                        ),
                        title: Text(notificationTitle[index]),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notificationTime[index],
                              style: TextStyles.p3Normal,
                            ),
                          ],
                        ),
                      );
                    },
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

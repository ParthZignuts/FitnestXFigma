import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../theme/theme.dart';

class DetailsOnOnboardScreen extends StatelessWidget {
  const DetailsOnOnboardScreen(
      {Key? key,
      required this.imgSrc,
      required this.mainContent,
      required this.description})
      : super(key: key);
  final String imgSrc;
  final String mainContent;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imgSrc,
          fit: BoxFit.fill,
          width: 375.w,
          height: 350.h,
        ),
        Padding(
          padding: EdgeInsets.only(top: 45.0.sp,left: 20.0.sp,right: 20.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainContent,
                style: TextStyles.h1Bold.copyWith(fontFamily: 'Poppins'),
              ),
              SizedBox(height: 5.h),
              Text(
                description,
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColor.gray),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

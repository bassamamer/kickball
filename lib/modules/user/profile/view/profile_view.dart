import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kick_ball/helpers/binding_helper.dart';
import 'package:kick_ball/helpers/constant_helper.dart';

import '../../../../helpers/styles_manager.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 50.w),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(image: AssetImage(AppAssets.userImage)),
            40.verticalSpace,
            Text(
              "Bassam Amer",
              style: getRegularTextStyle(color: Colors.black, fontSize: 80.sp),
            ),
            40.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'UserName:',
                  style: getRegularTextStyle(
                      color: AppColors.grey, fontSize: 40.sp),
                ),
                10.horizontalSpace,
                Text(
                  "bassam_amer123",
                  style:
                      getRegularTextStyle(color: Colors.black, fontSize: 40.sp),
                ),
              ],
            ),
            40.verticalSpace,
            Container(
              color: AppColors.grey,
              height: 2.h,
              width: 300.w,
            ),
            40.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Email:',
                  style: getRegularTextStyle(
                      color: AppColors.grey, fontSize: 40.sp),
                ),
                10.horizontalSpace,
                Text(
                  "bassamamer123@gmail.com",
                  style:
                      getRegularTextStyle(color: Colors.black, fontSize: 40.sp),
                ),
              ],
            ),
            40.verticalSpace,
            Container(
              color: AppColors.grey,
              height: 2.h,
              width: 300.w,
            ),
            40.verticalSpace,
            ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.authPageURL);
                },
                child: const Text('Log out')),
            40.verticalSpace,
          ],
        ),
      ),
    ));
  }
}

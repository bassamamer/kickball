import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../helpers/constant_helper.dart';
import '../../../../helpers/styles_manager.dart';

class PaymentDeclined extends StatelessWidget {
  const PaymentDeclined({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: AppColors.secondary,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 50.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Payment Declined',
                  style: getBoldTextStyle(color: Colors.black, fontSize: 60.sp),
                ),
                50.verticalSpace,
                Image(
                  image: const AssetImage(
                    AppAssets.declined,
                  ),
                  width: 370.w,
                  height: 330.h,
                ),
                50.verticalSpace,
                Text(
                  'There was something wrong try again',
                  style:
                      getRegularTextStyle(color: Colors.black, fontSize: 40.sp),
                ),
                50.verticalSpace,
                ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Try Again"),
                )
              ],
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kick_ball/helpers/binding_helper.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/modules/playground_details/models/playground_model.dart';

import '../../../helpers/styles_manager.dart';

class PaymentApproved extends StatelessWidget {
  const PaymentApproved({super.key});

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
                  "Warning: If the payment method is cash, \n you must go to the field within 24 hours to confirm the reservation, or it will be cancelled.",
                  style: getBoldTextStyle(color: Colors.red, fontSize: 60.sp),
                  textAlign: TextAlign.center,
                ),
                50.verticalSpace,
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      _buildDetailsRow("Stadium name: ",
                          PlayGroundModel.playgrounds[0].name),
                      _buildDetailsRow(
                          "Date and Time: ", "Sat 26/11/2023 8:30 PM"),
                      _buildDetailsRow("Number of Hours: ", "1"),
                    ],
                  ),
                ),
                50.verticalSpace,
                Text(
                  'Payment Approved',
                  style: getBoldTextStyle(color: Colors.black, fontSize: 60.sp),
                ),
                50.verticalSpace,
                Image(
                  image: const AssetImage(
                    AppAssets.accepted,
                  ),
                  width: 370.w,
                  height: 330.h,
                ),
                50.verticalSpace,
                Text(
                  'Thank you for booking with us',
                  style:
                      getRegularTextStyle(color: Colors.black, fontSize: 40.sp),
                ),
                50.verticalSpace,
                ElevatedButton(
                  onPressed: () {
                    Get.offAllNamed(AppRoutes.homeURL);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0099EF)),
                  child: const Text("Back to Home"),
                )
              ],
            )),
      ),
    );
  }

  Widget _buildDetailsRow(String title, String content) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          title,
          style: getBoldTextStyle(color: Colors.black, fontSize: 80.sp),
        ),
        10.horizontalSpace,
        Text(
          content,
          style: getRegularTextStyle(color: Colors.black, fontSize: 60.sp),
        )
      ],
    );
  }
}

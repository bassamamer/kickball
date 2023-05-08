import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/modules/playground_details/models/playground_model.dart';

import '../../../helpers/styles_manager.dart';

class PaymentApproved extends StatelessWidget {
  const PaymentApproved({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: AppColors.secondary,
          padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 50.w),
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  _buildDetailsRow(
                      "Stadium name", PlayGroundModel.playgrounds[0].name),
                  _buildDetailsRow("Date and Time", "Sat 26/11/2023 8:30 PM"),
                  _buildDetailsRow("Number of Hours", "1"),
                ],
              ),
              Text(
                "Warning: If the payment method is cash, you must go to the field within 24 hours to confirm the reservation, or it will be cancelled.",
                style: getRegularTextStyle(color: Colors.red),
              )
            ],
          )),
    );
  }

  _buildDetailsRow(String title, String content) {
    Row(
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

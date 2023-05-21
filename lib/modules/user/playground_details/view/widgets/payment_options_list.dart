import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/helpers/styles_manager.dart';

import '../../controller/playground_details_controller.dart';

class PaymentOptionsList extends GetView<PlaygroundDetailsController> {
  const PaymentOptionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Obx(
          () => RadioGroup<String>.builder(
            textStyle: getBoldTextStyle(color: Colors.black, fontSize: 40.sp),
            groupValue: controller.selectedPayment.value,
            onChanged: (value) {
              controller.changePaymentOption(value ?? "Cash");
            },
            items: controller.paymentOptions,
            itemBuilder: (item) => RadioButtonBuilder(
              item,
            ),
            fillColor: AppColors.primary,
          ),
        )
      ],
    );
  }
}

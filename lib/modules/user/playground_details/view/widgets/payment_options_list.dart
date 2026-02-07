import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
          () => FormBuilderRadioGroup<String>(
            name: 'payment_option',
            initialValue: controller.selectedPayment.value,
            onChanged: (value) {
              controller.changePaymentOption(value ?? "Cash");
            },
            options: controller.paymentOptions
                .map((option) => FormBuilderFieldOption(
                      value: option,
                      child: Text(
                        option,
                        style: getBoldTextStyle(color: Colors.black, fontSize: 18.sp),
                      ),
                    ))
                .toList(),
            activeColor: AppColors.primary,
            decoration: const InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
            ),
          ),
        )
      ],
    );
  }
}

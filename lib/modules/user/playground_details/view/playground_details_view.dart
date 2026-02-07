import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_validator/form_validator.dart';
import 'package:get/get.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/helpers/styles_manager.dart';
import 'package:kick_ball/modules/user/playground_details/controller/playground_details_controller.dart';
import 'package:kick_ball/modules/user/playground_details/view/widgets/available_times.dart';
import 'package:kick_ball/modules/user/playground_details/view/widgets/payment_options_list.dart';
import 'package:kick_ball/modules/widgets/user_home_app_bar.dart';

import '../../../../helpers/binding_helper.dart';
import '../models/custom_visa.dart';
import '../models/playground_model.dart';

class PlayGroundDetailsView extends GetView<PlaygroundDetailsController> {
  const PlayGroundDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final PlayGroundModel playGround = Get.arguments as PlayGroundModel;

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const UserHomeAppBar(),
          Container(
            color: AppColors.secondary,
            padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 50.w),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Image(
                      image: AssetImage(playGround.imageUrl),
                    ),
                    40.horizontalSpace,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _buildDetailsRow('Name: ', playGround.name),
                        20.verticalSpace,
                        _buildDetailsRow(
                            'Price: ', "${playGround.hourPrice} L.E/Hour"),
                        20.verticalSpace,
                        _buildDetailsRow('Number of team players: ',
                            playGround.playerNum.toString()),
                        20.verticalSpace,
                        _buildDetailsRow('Working hours: ',
                            playGround.workingTime.toString()),
                        20.verticalSpace,
                        ElevatedButton(
                            onPressed: () {
                              // To open map, use url_launcher package
                            },
                            child: const Text('Map Location'))
                      ],
                    )
                  ],
                ),
                100.verticalSpace,
                const AvailableTimes(),
                100.verticalSpace,
                SizedBox(
                  width: 150.w,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Pay'),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 50.w),
            child: Column(
              children: [
                Text(
                  'Payment Method',
                  style: getBoldTextStyle(color: Colors.black, fontSize: 55.sp),
                ),
                40.verticalSpace,
                const PaymentOptionsList(),
                40.verticalSpace,
                Obx(() {
                  if (controller.selectedPayment.value ==
                      "Pay with Credit Card") {
                    return Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 800.w,
                        child: FormBuilder(
                          key: controller.paymentFormKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              FormBuilderTextField(
                                style: Theme.of(context).textTheme.titleLarge,
                                name: 'card_number',
                                decoration: const InputDecoration(
                                  labelText: "Card Number",
                                  hintText: "Card Number",
                                ),
                                validator: ValidationBuilder().required(Validation.required).minLength(16).build(),
                              ),
                              20.verticalSpace,
                              FormBuilderTextField(
                                style: Theme.of(context).textTheme.titleLarge,
                                name: 'expiry_date',
                                decoration: const InputDecoration(
                                  labelText: "Expiration Date",
                                  hintText: "MM/YY",
                                ),
                                validator: ValidationBuilder().required(Validation.required).build(),
                              ),
                              20.verticalSpace,
                              FormBuilderTextField(
                                style: Theme.of(context).textTheme.titleLarge,
                                name: 'vcc',
                                decoration: const InputDecoration(
                                  hintText: "VCC",
                                ),
                                validator: ValidationBuilder().required(Validation.required).minLength(3).maxLength(3).build(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
                40.verticalSpace,
                Text(
                  'Total: ${PlayGroundModel.playgrounds[0].hourPrice}',
                  style: getBoldTextStyle(color: Colors.black, fontSize: 60.sp),
                ),
                40.verticalSpace,
                SizedBox(
                  width: 200.w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2F88FF),
                    ),
                    onPressed: () {
                      if (controller.selectedPayment.value ==
                          "Pay with Credit Card") {
                        if (!controller.paymentFormKey.currentState!
                            .saveAndValidate()) {
                          return;
                        }
                        final userVisa = CustomVisa(
                          cardNum: controller.paymentFormKey.currentState
                              ?.fields['card_number']?.value,
                          expireDate: controller.paymentFormKey.currentState
                              ?.fields['expiry_date']?.value,
                          vcc: controller.paymentFormKey.currentState
                              ?.fields['vcc']?.value,
                        );
                        for (var element in CustomVisa.visaList) {
                          if (element == userVisa) {
                            Navigator.pushNamed(context, AppRoutes.approvePageURL);
                            return;
                          }
                        }
                        Navigator.pushNamed(context, AppRoutes.declinePageURL);
                      } else {
                        Navigator.pushNamed(context, AppRoutes.approvePageURL);
                      }
                    },
                    child:
                        Text('Pay ${PlayGroundModel.playgrounds[0].hourPrice}'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }

  _buildDetailsRow(String title, String desc) {
    return Row(
      children: [
        Text(
          title,
          style: getBoldTextStyle(color: Colors.black, fontSize: 48.sp),
        ),
        Text(desc,
            style: getRegularTextStyle(color: Colors.black, fontSize: 40.sp))
      ],
    );
  }
}

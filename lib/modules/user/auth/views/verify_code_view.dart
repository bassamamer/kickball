import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../helpers/binding_helper.dart';
import '../../../../helpers/constant_helper.dart';

class VerifyCodeView extends StatelessWidget {
  final GlobalKey<FormBuilderState> _verifyCodeFormKey =
      GlobalKey<FormBuilderState>();

  VerifyCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondary,
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 150.h, horizontal: 150.w),
          width: 800.w,
          height: 900.h,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.w)),
          child: FormBuilder(
              key: _verifyCodeFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FormBuilderTextField(
                    style: Theme.of(context).textTheme.titleLarge,
                    name: 'verify-code',
                    decoration: const InputDecoration(
                      hintText: AppStrings.enterVerifyCode,
                    ),
                  ),
                  70.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.didntReceiveCode,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      5.horizontalSpace,
                      Text(
                        AppStrings.resend,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: AppColors.primary),
                      ),
                    ],
                  ),
                  140.verticalSpace,
                  SizedBox(
                    width: 300.w,
                    child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.newPasswordPageURL);
                        },
                        child: const Text(AppStrings.confirm)),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

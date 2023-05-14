import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../helpers/binding_helper.dart';
import '../../../../helpers/constant_helper.dart';
import '../../../../helpers/styles_manager.dart';

class EmailResetView extends StatelessWidget {
  final GlobalKey<FormBuilderState> _forgetPasswordFormKey =
      GlobalKey<FormBuilderState>();

  EmailResetView({super.key});

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
              key: _forgetPasswordFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      FormBuilderTextField(
                        style: Theme.of(context).textTheme.titleLarge,
                        name: 'email',
                        decoration: const InputDecoration(
                          hintText: AppStrings.enterEmail,
                        ),
                      ),
                      50.verticalSpace,
                      SizedBox(
                        width: 150.w,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.verifyCodePageURL);
                            },
                            child: const Text(AppStrings.send)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      32.verticalSpace,
                      Text(
                        AppStrings.dontHaveAccount,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      32.verticalSpace,
                      SizedBox(
                        width: 150.w,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle: getSemiBoldTextStyle(
                                    color: AppColors.primary,
                                    fontSize: FontSize.s24),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                backgroundColor: Colors.white,
                                foregroundColor: AppColors.primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.w),
                                    side: const BorderSide(
                                        color: AppColors.primary))),
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text(AppStrings.signUp)),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../helpers/binding_helper.dart';
import '../../../helpers/constant_helper.dart';

class NewPasswordView extends StatelessWidget {
  final GlobalKey<FormBuilderState> _resetPasswordFormKey =
      GlobalKey<FormBuilderState>();

  NewPasswordView({super.key});

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
              key: _resetPasswordFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        AppStrings.addNewPassword,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      32.verticalSpace,
                      FormBuilderTextField(
                        style: Theme.of(context).textTheme.titleLarge,
                        name: 'password',
                        decoration: const InputDecoration(
                          hintText: AppStrings.enterPassword,
                        ),
                      ),
                      50.verticalSpace,
                      FormBuilderTextField(
                        style: Theme.of(context).textTheme.titleLarge,
                        name: 'repeat-password',
                        decoration: const InputDecoration(
                          hintText: AppStrings.confirmPassword,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      32.verticalSpace,
                      SizedBox(
                        width: 300.w,
                        child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(AppRoutes.authPageURL);
                            },
                            child: const Text(AppStrings.confirm)),
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

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kick_ball/helpers/constant_helper.dart';

import '../../../helpers/binding_helper.dart';

class LoginView extends StatelessWidget {
  final GlobalKey<FormBuilderState> _loginFormKey =
      GlobalKey<FormBuilderState>();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 200.w),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.welcomeBack,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            32.verticalSpace,
            const Image(image: AssetImage(AppAssets.loginImage)),
            50.verticalSpace,
            FormBuilder(
                key: _loginFormKey,
                child: Column(
                  children: <Widget>[
                    FormBuilderTextField(
                      style: Theme.of(context).textTheme.titleLarge,
                      name: 'email',
                      decoration: InputDecoration(
                        hintText: AppStrings.enterEmail,
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 32.h, horizontal: 16.w),
                      ),
                    ),
                    32.verticalSpace,
                    FormBuilderTextField(
                      style: Theme.of(context).textTheme.titleLarge,
                      name: 'password',
                      decoration: InputDecoration(
                        hintText: AppStrings.enterPassword,
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 32.h, horizontal: 16.w),
                      ),
                    ),
                    50.verticalSpace,
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.emailResetPageURL);
                        },
                        child: Text(AppStrings.forgetPassword,
                            style: Theme.of(context).textTheme.headlineSmall),
                      ),
                    ),
                    32.verticalSpace,
                    SizedBox(
                      width: 500.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.offAndToNamed(AppRoutes.homeURL);
                        },
                        child: const Text(AppStrings.signIn),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

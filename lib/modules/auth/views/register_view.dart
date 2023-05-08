import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helpers/constant_helper.dart';
import '../../../helpers/styles_manager.dart';

class RegisterView extends StatelessWidget {
  final GlobalKey<FormBuilderState> _registerFormKey =
      GlobalKey<FormBuilderState>();

  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 133.w),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppStrings.welcomeMessage,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            22.verticalSpace,
            Text(AppStrings.letsHelpYou,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.black, fontWeight: FontWeightManager.regular),
                textAlign: TextAlign.center),
            50.verticalSpace,
            FormBuilder(
                key: _registerFormKey,
                child: Column(
                  children: <Widget>[
                    FormBuilderTextField(
                      style: Theme.of(context).textTheme.titleLarge,
                      name: 'name',
                      decoration: InputDecoration(
                        hintText: AppStrings.enterName,
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 32.h, horizontal: 16.w),
                      ),
                    ),
                    32.verticalSpace,
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
                    32.verticalSpace,
                    FormBuilderTextField(
                      style: Theme.of(context).textTheme.titleLarge,
                      name: 'confirm-password',
                      decoration: InputDecoration(
                        hintText: AppStrings.confirmPassword,
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 32.h, horizontal: 16.w),
                      ),
                    ),
                    32.verticalSpace,
                    SizedBox(
                      width: 500.w,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            textStyle: getSemiBoldTextStyle(
                                color: AppColors.primary,
                                fontSize: FontSize.s24),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            backgroundColor: Colors.white,
                            foregroundColor: AppColors.primary,
                          ),
                          onPressed: () {},
                          child: const Text(AppStrings.register)),
                    ),
                    32.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppStrings.alreadyHaveAccount,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        4.horizontalSpace,
                        Text(AppStrings.signIn,
                            style: getSemiBoldTextStyle(
                                color: Colors.white, fontSize: FontSize.s20))
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

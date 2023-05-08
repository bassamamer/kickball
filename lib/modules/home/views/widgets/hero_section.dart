import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/helpers/styles_manager.dart';

import '../../../widgets/home_app_bar.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1100.h,
      color: AppColors.primary,
      child: Column(
        children: <Widget>[
          const HomeAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 64.h, horizontal: 140.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        AppStrings.heroTitle,
                        style: getBoldTextStyle(
                            color: Colors.black, fontSize: 85.sp),
                        textAlign: TextAlign.center,
                      ),
                      20.verticalSpace,
                      Text(
                        AppStrings.heroMessage,
                        style: Theme.of(context).textTheme.displayLarge,
                        textAlign: TextAlign.center,
                      ),
                      100.verticalSpace,
                      SizedBox(
                        width: 300.w,
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
                            child: const Text(AppStrings.getStart)),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Image(
                    image: const AssetImage(AppAssets.heroImage),
                    width: 270.w,
                    height: 600.h,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

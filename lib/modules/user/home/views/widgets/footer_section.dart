import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kick_ball/helpers/styles_manager.dart';

import '../../../../../helpers/constant_helper.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 100.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: const AssetImage(AppAssets.logoImage),
                width: 300.w,
                height: 190.h,
              ),
              Row(
                children: [
                  Image(
                    image: const AssetImage(AppAssets.facebookImage),
                    width: 70.w,
                    height: 70.h,
                  ),
                  Image(
                    image: const AssetImage(AppAssets.twitter),
                    width: 70.w,
                    height: 70.h,
                  ),
                  Image(
                    image: const AssetImage(AppAssets.instagramImage),
                    width: 70.w,
                    height: 70.h,
                  ),
                  Image(
                    image: const AssetImage(AppAssets.playStoreImage),
                    width: 70.w,
                    height: 70.h,
                  ),
                  Image(
                    image: const AssetImage(AppAssets.appStoreImage),
                    width: 70.w,
                    height: 70.h,
                  ),
                ],
              )
            ],
          ),
          20.verticalSpace,
          Container(
            color: Colors.white,
            height: 5.h,
            width: double.infinity,
          ),
          20.verticalSpace,
          Text(
            "©copyright.All rights reserved.",
            style: getRegularTextStyle(color: Colors.white, fontSize: 40.sp),
          )
        ],
      ),
    );
  }
}

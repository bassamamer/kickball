import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kick_ball/helpers/binding_helper.dart';

import '../../helpers/constant_helper.dart';
import '../../helpers/styles_manager.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Get.offAllNamed(AppRoutes.homeURL);
                  },
                  child: Image(
                    image: const AssetImage(AppAssets.logoImage),
                    width: 300.w,
                    height: 190.h,
                  ),
                ),
              ),
              Text(
                AppStrings.home,
                style: getRegularTextStyle(color: Colors.white, fontSize: 32),
              ),
              50.horizontalSpace,
              Text(
                AppStrings.about,
                style: getRegularTextStyle(color: Colors.white, fontSize: 32),
              ),
              50.horizontalSpace,
              Text(
                AppStrings.search,
                style: getRegularTextStyle(color: Colors.white, fontSize: 32),
              )
            ],
          ),
          Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.userPageURL);
                  },
                  child: Image(
                    image: const AssetImage(AppAssets.userImage),
                    width: 70.w,
                    height: 70.h,
                  ),
                ),
              ),
              50.horizontalSpace,
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    Get.offAndToNamed(AppRoutes.authPageURL);
                  },
                  child: Text(
                    "Sign Out",
                    style:
                        getRegularTextStyle(color: Colors.white, fontSize: 32),
                  ),
                ),
              ),
              50.horizontalSpace,
            ],
          )
        ],
      ),
    );
  }
}

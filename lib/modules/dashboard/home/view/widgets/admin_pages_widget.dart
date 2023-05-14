import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kick_ball/helpers/binding_helper.dart';
import 'package:kick_ball/helpers/constant_helper.dart';

import '../../../../../helpers/styles_manager.dart';

class AdminPage {
  final String imagePath;
  final String title;
  final int count;
  final String pageUrl;
  final String content;

  const AdminPage({
    required this.imagePath,
    required this.title,
    required this.count,
    required this.pageUrl,
    required this.content,
  });

  static List<AdminPage> pages = [
    const AdminPage(
        imagePath: AppAssets.goal,
        title: 'Playgrounds',
        count: 14,
        pageUrl: AppRoutes.adminPlaygroundsPageUrl,
        content: "Show Playgrounds  -> "),
    const AdminPage(
        imagePath: AppAssets.maleUser,
        title: 'Users',
        count: 32,
        pageUrl: AppRoutes.adminUsersPageUrl,
        content: "Show Playgrounds  -> "),
    const AdminPage(
        imagePath: AppAssets.userShield,
        title: 'Owners',
        count: 10,
        pageUrl: AppRoutes.adminOwnersPageUrl,
        content: "Show Playgrounds  -> "),
    const AdminPage(
        imagePath: AppAssets.plus,
        title: 'Add PlayGround',
        count: 14,
        pageUrl: AppRoutes.adminAddPlaygroundPageUrl,
        content: "Show Playgrounds  -> "),
  ];
}

class AdminPagesWidget extends StatelessWidget {
  const AdminPagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 100.w),
      child: Wrap(
        runSpacing: 30.h,
        children: AdminPage.pages
            .map((page) => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(page.pageUrl);
                    },
                    child: SizedBox(
                      width: ScreenUtil().screenWidth * .4,
                      child: Card(
                        elevation: 4,
                        child: Column(
                          children: <Widget>[
                            50.verticalSpace,
                            Image(
                              image: AssetImage(page.imagePath),
                              width: 330.w,
                              height: 220.h,
                            ),
                            25.verticalSpace,
                            Text(
                              page.title,
                              style: getBoldTextStyle(
                                  color: Colors.black, fontSize: FontSize.s36),
                            ),
                            25.verticalSpace,
                            Text(
                              page.count.toString(),
                              style: getBoldTextStyle(
                                  color: Colors.black, fontSize: FontSize.s32),
                            ),
                            25.verticalSpace,
                            Text(
                              page.content.toString(),
                              style: getBoldTextStyle(
                                  color: AppColors.primary,
                                  fontSize: FontSize.s32),
                            ),
                            50.verticalSpace,
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

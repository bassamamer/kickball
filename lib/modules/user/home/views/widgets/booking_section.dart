import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kick_ball/helpers/binding_helper.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/helpers/styles_manager.dart';

import '../../../playground_details/models/playground_model.dart';

class BookingSection extends StatelessWidget {
  const BookingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 100.w),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 900.w,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search what you want",
                      ),
                    ),
                  ),
                  10.horizontalSpace,
                  // GestureDetector(
                  //   onTap: () {
                  //     Get.dialog(const FilterDialog());
                  //   },
                  //   child: Image(
                  //     image: const AssetImage(
                  //       AppAssets.filterIcon,
                  //     ),
                  //     width: 46.w,
                  //     height: 46.h,
                  //   ),
                  // )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 5.w),
              height: 1400.h,
              child: GridView.builder(
                itemCount: PlayGroundModel.playgrounds.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20.w,
                    mainAxisSpacing: 20,
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int i) {
                  final playground = PlayGroundModel.playgrounds[i];
                  return Container(
                    color: AppColors.grey,
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          playground.name,
                          style: getRegularTextStyle(
                              color: Colors.black, fontSize: 40.sp),
                        ),
                        20.verticalSpace,
                        Image(
                          image: AssetImage(playground.imageUrl),
                          width: 450.w,
                          height: 220.h,
                          fit: BoxFit.fitWidth,
                        ),
                        20.verticalSpace,
                        Text(
                          "${playground.hourPrice} L.E/Hour",
                          style: getRegularTextStyle(
                              color: Colors.black, fontSize: 40.sp),
                        ),
                        20.verticalSpace,
                        SizedBox(
                          width: 300.w,
                          child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(AppRoutes.playGroundDetailsPageURL,
                                    arguments: playground);
                              },
                              child: const Text("Book Now")),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}

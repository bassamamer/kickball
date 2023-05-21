import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kick_ball/helpers/binding_helper.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/helpers/styles_manager.dart';
import 'package:kick_ball/modules/user/home/controller/playgrounds_controller.dart';

class PlaygroundsSection extends GetView<PlaygroundsController> {
  const PlaygroundsSection({super.key});

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
                    child: TextField(
                      onChanged: (input) {
                        controller.findPlayground(input);
                      },
                      decoration: const InputDecoration(
                        hintText: "Search what you want",
                      ),
                    ),
                  ),
                  10.horizontalSpace,
                  ElevatedButton(
                      onPressed: () async {
                        await controller.findNearbyPlayGrounds();
                        Get.toNamed(AppRoutes.mapPageUrl);
                      },
                      child: const Text("Find Nearby Playgrounds"))
                ],
              ),
            ),
            Obx(() {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 5.w),
                height: 1400.h,
                child: (controller.isLoading.value == true)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : (controller.playgrounds.isEmpty)
                        ? Center(
                            child: Text(
                              "No PlayGrounds Found",
                              style: getBoldTextStyle(
                                  color: Colors.black,
                                  fontSize: FontSize.s36.sp),
                            ),
                          )
                        : GridView.builder(
                            itemCount: controller.playgrounds.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisSpacing: 20.w,
                                    mainAxisSpacing: 20,
                                    crossAxisCount: 3),
                            itemBuilder: (BuildContext context, int i) {
                              final playground = controller.playgrounds[i];
                              return Container(
                                color: AppColors.grey,
                                padding: EdgeInsets.symmetric(vertical: 20.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                                            Get.toNamed(
                                                AppRoutes
                                                    .playGroundDetailsPageURL,
                                                arguments: playground);
                                          },
                                          child: const Text("Book Now")),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
              );
            })
          ],
        ));
  }
}

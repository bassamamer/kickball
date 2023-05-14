import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/helpers/styles_manager.dart';

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 100.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Card(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: const AssetImage(AppAssets.dailyReservations),
                  width: 600.w,
                  height: 500.h,
                ),
                30.verticalSpace,
                Text(
                  "Daily Reservations",
                  style: getRegularTextStyle(
                      color: Colors.black, fontSize: FontSize.s32),
                ),
                30.verticalSpace,
                Text(
                  "55% Reservations throughout the week",
                  style: getRegularTextStyle(
                      color: Colors.black, fontSize: FontSize.s28),
                ),
                30.verticalSpace,
                Container(
                  height: 2.h,
                  width: 500.w,
                  color: Colors.grey,
                ),
                30.verticalSpace,
                Row(
                  children: [
                    const Image(
                      image: AssetImage(AppAssets.clock),
                    ),
                    10.horizontalSpace,
                    Text(
                      "updated 4 minutes ago",
                      style: getRegularTextStyle(
                          color: Colors.grey, fontSize: FontSize.s20),
                    ),
                  ],
                ),
                30.verticalSpace,
              ],
            ),
          )),
          Card(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image(
                  image: const AssetImage(AppAssets.fieldsReservations),
                  width: 600.w,
                  height: 500.h,
                ),
                30.verticalSpace,
                Text(
                  "Fields Reservations",
                  style: getRegularTextStyle(
                      color: Colors.black, fontSize: FontSize.s32),
                ),
                30.verticalSpace,
                Text(
                  "The most four fields booked",
                  style: getRegularTextStyle(
                      color: Colors.black, fontSize: FontSize.s28),
                ),
                30.verticalSpace,
                Container(
                  height: 2.h,
                  width: 500.w,
                  color: Colors.grey,
                ),
                30.verticalSpace,
                Row(
                  children: [
                    const Image(
                      image: AssetImage(AppAssets.clock),
                    ),
                    10.horizontalSpace,
                    Text(
                      "updated 4 minutes ago",
                      style: getRegularTextStyle(
                          color: Colors.grey, fontSize: FontSize.s20),
                    ),
                  ],
                ),
                30.verticalSpace,
              ],
            ),
          ))
        ],
      ),
    );
  }
}

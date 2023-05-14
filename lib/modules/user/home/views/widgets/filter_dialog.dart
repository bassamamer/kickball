import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/helpers/styles_manager.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({super.key});

  @override
  State<FilterDialog> createState() => _PaymentOptionsListState();
}

class _PaymentOptionsListState extends State<FilterDialog> {
  String _verticalGroupValue = "filter_options";

  final _status = [
    "Default",
    "Price from low to high",
    "Price from low to high",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 100.h, horizontal: 50.w),
        width: 500.w,
        height: 800.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Choose Sort Option",
              style: getMediumTextStyle(color: Colors.black, fontSize: 60.sp),
            ),
            40.verticalSpace,
            RadioGroup<String>.builder(
              textStyle: getBoldTextStyle(color: Colors.black, fontSize: 40.sp),
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? '';
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              fillColor: AppColors.primary,
            ),
          ],
        ),
      ),
    );
  }
}

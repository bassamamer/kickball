import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/helpers/styles_manager.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({super.key});

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  String _verticalGroupValue = "Default";

  final _status = [
    "Default",
    "Price from low to high",
    "Price from high to low",
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
              style: getMediumTextStyle(color: Colors.black, fontSize: 30.sp),
            ),
            40.verticalSpace,
            FormBuilderRadioGroup<String>(
              name: 'filter_options',
              initialValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value ?? 'Default';
              }),
              options: _status
                  .map((item) => FormBuilderFieldOption(
                        value: item,
                        child: Text(
                          item,
                          style: getBoldTextStyle(color: Colors.black, fontSize: 16.sp),
                        ),
                      ))
                  .toList(),
              activeColor: AppColors.primary,
              decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

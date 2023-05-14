import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/helpers/styles_manager.dart';

class PaymentOptionsList extends StatefulWidget {
  const PaymentOptionsList({super.key});

  @override
  State<PaymentOptionsList> createState() => _PaymentOptionsListState();
}

class _PaymentOptionsListState extends State<PaymentOptionsList> {
  String _verticalGroupValue = "Payment";

  final _status = ["Cash", "PayPal", "Pay with Credit Card"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
    );
  }
}

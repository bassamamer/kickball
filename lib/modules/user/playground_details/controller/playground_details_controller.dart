import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class PlaygroundDetailsController extends GetxController {
  final paymentOptions = ["Cash", "PayPal", "Pay with Credit Card"];
  var selectedPayment = 'Cash'.obs;
  final GlobalKey<FormBuilderState> paymentFormKey = GlobalKey<FormBuilderState>();

  changePaymentOption(String newPaymentOption) {
    selectedPayment.value = newPaymentOption;
  }
}

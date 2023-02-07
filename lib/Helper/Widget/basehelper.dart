import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/colors.dart';
import 'package:get/get.dart';

class BaseHelper {
  static showSnackBar(msg, {color, button}) {
    Get.showSnackbar(GetSnackBar(
      message: msg,
      borderRadius: 5,
      barBlur: 5,
      backgroundColor: AppColor.colorBlue,
      margin: const EdgeInsets.all(5),
      duration: const Duration(milliseconds:3000),
      mainButton: button,
    ));
  }
   static hideKeypad(BuildContext context) {
    FocusScope.of(context).unfocus();
  }
}



import 'package:get/get.dart';

class Validators {
  static String? validateField(
    String? value,
  ) {
    if (value == null || value.isEmpty) {
      return "required".tr;
    }
    return null;
  }

  static String? urlValidate(
    value,
  ) {
    Pattern pattern =
        r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)';
    RegExp regex = RegExp(pattern as String);

    if (value.isEmpty) {
      return "url is required".tr;
    } else if (!regex.hasMatch(value)) {
      return "Website Url must be started from www".tr;
    }
    return null;
  }

  static String? validateDropdown(
    var value,
  ) {
    if (value == null) {
      return "required".tr;
    }
    return null;
  }

  static String? validateEmailVerifyOTP(
    String value,
  ) {
    if (value.isEmpty) {
      return "otp_is_required".tr;
    } else if (value.length < 6) {
      return "incorrect_otp_entered".tr;
    }
    return null;
  }


  static String? validateEmail(value) {
    Pattern pattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regex = RegExp(pattern as String);
   
    if (value.isEmpty) {
      return "required".tr;
    } else if (!regex.hasMatch(value)) {
      return "incorrect_email_entered".tr;
    }
    return null;
  }

  static String? validatePassword(
    String value,
  ) {
    if (value.isEmpty) {
      return "required".tr;
    } else if (value.length < 8) {
      return "min_8_char_required".tr;
    }
    return null;
  }

  static String? validateStrongPassword(
    String value,
  ) {
    // RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~+%^.,]).{8,}$');
    if (value.isEmpty) {
      return "required".tr;
    }

    if (value.length < 8) {
      return "password_should_be_at_least_of_x_char".tr;
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "password_should_contain_at_least_an_uppercase".tr;
    }

    if (!value.contains(RegExp(r'[a-z]'))) {
      return "password_should_contain_at_least_a_lowercase".tr;
    }

    if (!value.contains(RegExp(r'[0-9]'))) {
      return "password_should_contain_at_least_a_digit".tr;
    }

    if (!value.contains(RegExp(r'[!@#\$&*~+%^.,]'))) {
      return "password_should_contain_at_least_a_special_char".tr;
    }

    // if (!regex.hasMatch(value)) return 'enter_strong_password'.tr;

    return null;
  }

  static String validatePhoneNumber(
    String value,
  ) {
 
    Pattern pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regex = RegExp(pattern as String);
    if (value.isEmpty) {
      return "required".tr;
    } else if (!regex.hasMatch(value)) {
      return "Incorrect phone number entered";
    }
    return '';
  }
}

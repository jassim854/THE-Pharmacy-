import 'package:flutter_pharmacy_mobile_app/controllers/authcontroller.dart';
import 'package:flutter_pharmacy_mobile_app/controllers/homePageController.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(HomePageController());

    // Get.put(TokenHelper());
  }
}

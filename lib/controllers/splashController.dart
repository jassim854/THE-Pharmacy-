import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/Login_view.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void onInit() {
    animationInitilization();
    futureView();
    // TODO: implement onInit
    super.onInit();
  }

  Future<Null> futureView() {
    return Future.delayed(
      Duration(seconds: 6),
      () {
        Get.toNamed(LogInView.routeName);
      },
    );
  }

  animationInitilization() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut)
            .obs
            .value;

    animation.addListener(() => update());
    animationController.forward();
  }
}

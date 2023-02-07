import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_mobile_app/controllers/splashController.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/appimages.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/colors.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/Login_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/splash';

  SplashScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColor.colorwhite,
            body: GetBuilder<SplashController>(
                init: SplashController(),
                builder: (controller) {
                  return Center(
                    child: Container(
                      width: controller.animation.value * 200,
                      height: controller.animation.value * 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColor.backgroundColorGrey),
                        image: const DecorationImage(
                          image: AssetImage(
                            Images.splashLogo,
                          ),
                        ),
                      ),
                    ),
                  );
                })));
  }
}

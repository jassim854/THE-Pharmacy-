import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/elevated_button.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/appimages.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/colors.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/textStyles.dart';
import 'package:get/get.dart';

import '../../Helper/Widget/text_form_field.dart';
import '../../Helper/Widget/validators.dart';
import '../../controllers/authcontroller.dart';

class ForgetPassword extends StatelessWidget {
  static const routeName = '/ForgetPassword';
  final authcontrollerr = Get.find<AuthController>();
  ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColor.backgroundColorGrey,
          body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                SizedBox(
                  height: height * 0.01,
                ),
                headerImage(context),
                Center(
                  child: Text(
                    'Forget Password',
                    style: kHeadingBlueStyle,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Form(
                  key: authcontrollerr.formKey2,
                  child: CustomTextFormField(
                    
                      validator: (val) => Validators.validateEmail(val),
                      hinttext: 'Email',
                      controller: authcontrollerr.forgetPasswordController),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                SizedBox(
                    width: double.infinity,
                    child: CustomElevatedButton(
                        onPressed: () {
                          if (authcontrollerr.formKey2.currentState!
                              .validate()) {
                            authcontrollerr.forgetPassword(context);
                          } else {
                            return;
                          }
                        },
                        text: 'Reset Password'))
              ],
            ),
          )),
    );
  }

  Container header() {
    return Container(
      alignment: Alignment.centerLeft,
      constraints: const BoxConstraints(maxHeight: 40, maxWidth: 150),
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(Images.signUpHeader))),
    );
  }

  headerImage(context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).viewInsets.bottom >= 200
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.height * 0.3),
      child: const Image(
        image: AssetImage(
          Images.signUpHeader1,
        ),
      ),
    );
  }
}

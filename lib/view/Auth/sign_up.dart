import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/basehelper.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/custom_widgets.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/elevated_button.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/text_form_field.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/validators.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/appimages.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/colors.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/textStyles.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/Login_view.dart';

import '../../controllers/authcontroller.dart';

import 'package:get/get.dart';

import 'forgetPasswor.dart';

class SignUpView extends StatelessWidget {
  static const routeName = '/SignUpView';
  final authcontrollerr = Get.find<AuthController>();

  SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColor.backgroundColorGrey,
            resizeToAvoidBottomInset: false,
            body: Container(
              padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
              child: Form(
                  key: authcontrollerr.formKey1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      header(),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      headerImage(
                          maxHeight:
                              MediaQuery.of(context).viewInsets.bottom >= 100
                                  ? MediaQuery.of(context).size.height * 0.07
                                  : MediaQuery.of(context).size.height * 0.3),
                      // SizedBox(
                      //   height: height * 0.04,
                      // ),
                      MediaQuery.of(context).viewInsets.bottom >= 100
                          ? SizedBox(height: height * 0.015)
                          : const SizedBox.shrink(),
                      Center(child: headerLogIn()),
                      SizedBox(height: height * 0.02),
                      headerEmailAndPassword(),
                      SizedBox(height: height * 0.01),
                      emailField(context),
                      SizedBox(height: height * 0.01),
                      passwordfield(context),
                      SizedBox(height: height * 0.01),
                      confirmPasswordfield(context),
                      SizedBox(height: height * 0.01),
                      forgetPassword(),
                      SizedBox(height: height * 0.01),
                      signUpButton(context),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      logInButton(context),
                      const Spacer(),
                      footer(height),
                    ],
                  )),
            )));
  }

  Center forgetPassword() {
    return Center(
      child: InkWell(
        onTap: () {
          Get.toNamed(ForgetPassword.routeName);
        },
        child: Text('forget Password ?', style: kNormalBlue14TextStyle),
      ),
    );
  }

  Center logInButton(context) {
    return Center(
      child: RichText(
          text: TextSpan(
              text: "Have An Account?     ",
              style: const TextStyle(color: AppColor.colorBlue),
              children: [
            TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    BaseHelper.hideKeypad(context);
                    Get.offAndToNamed(LogInView.routeName);
                  },
                text: 'Log In',
                style: const TextStyle(
                    color: AppColor.colorBlue,
                    fontWeight: FontWeight.bold,
                    decorationThickness: 2,
                    decoration: TextDecoration.underline))
          ])),
    );
  }

  signUpButton(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomElevatedButton(
            onPressed: () {
              if (authcontrollerr.formKey1.currentState!.validate()) {
                if (authcontrollerr.passwordSignUpController.text ==
                    authcontrollerr.confirmPasswordController.text) {
                  authcontrollerr.signUp(context);
                } else {
                  (BaseHelper.showSnackBar('Password Does Not Match'));
                }
              } else {
                return;
              }
            },
            text: 'Sign Up'),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                authcontrollerr.signInGoogle(context);
              },
              child: const Image(
                image: AssetImage(
                  Images.socialGoogleLogo,
                ),
                color: AppColor.colorBlue,
                height: 30,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            InkWell(
              onTap: () {
                authcontrollerr.signInFacebbok(context);
              },
              child: const Image(
                image: AssetImage(Images.socialFacebookLogo),
                height: 35,
                color: AppColor.colorBlue,
              ),
            ),
          ],
        )
      ],
    );
  }

  passwordfield(BuildContext context) {
    return Obx(
      () => CustomTextFormField(
        validator: (val) => Validators.validatePassword(val),
        obsecureText: authcontrollerr.obsecureVar.value,
        suffixIcon: IconButton(
          onPressed: () {
            authcontrollerr.obsecureVar.value =
                !authcontrollerr.obsecureVar.value;
          },
          icon: Icon(
              authcontrollerr.obsecureVar.value
                  ? Icons.visibility_off_rounded
                  : Icons.remove_red_eye,
              size: 16),
        ),
        scrollPading: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom + 130),
        controller: authcontrollerr.passwordSignUpController,
        hinttext: 'Password',
      ),
    );
  }

  confirmPasswordfield(BuildContext context) {
    return Obx(
      () => CustomTextFormField(
        validator: (val) => Validators.validatePassword(val),
        obsecureText: authcontrollerr.obsecureVar.value,
        scrollPading:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        controller: authcontrollerr.confirmPasswordController,
        hinttext: 'Confirm Password',
      ),
    );
  }

  emailField(BuildContext context) {
    return CustomTextFormField(
      validator: (val) => Validators.validateEmail(val),
      scrollPading:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: authcontrollerr.emailSignUpContoller,
      hinttext: 'Email',
    );
  }

  Text headerEmailAndPassword() {
    return Text('Enter Your Details to Sign Up', style: kNormalBlue14TextStyle);
  }

  Text headerLogIn() {
    return Text('Iscrizione', style: kHeadingBlueStyle);
  }
}

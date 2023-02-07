import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/custom_widgets.dart';
import 'package:get/get.dart';

import 'package:flutter_pharmacy_mobile_app/Helper/Widget/basehelper.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/elevated_button.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/text_form_field.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/validators.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/appimages.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/colors.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/textStyles.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/sign_up.dart';
import 'package:flutter_pharmacy_mobile_app/view/HomePage/home.dart';

import '../../controllers/authcontroller.dart';
import 'forgetPasswor.dart';

class LogInView extends StatelessWidget {
  static const routeName = '/LoginView';
  final authcontrollerr = Get.find<AuthController>();

  LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColor.backgroundColorGrey,
            resizeToAvoidBottomInset: false,
            body: StreamBuilder<User?>(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return BaseHelper.showSnackBar('Something Went Wrog');
                  } else if (snapshot.hasData) {
                    return HomeView();
                  } else if (snapshot.data == null) {
                    return Container(
                      padding:
                          const EdgeInsets.only(top: 10, left: 8, right: 8),
                      child: Form(
                          key: authcontrollerr.formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              header(),
                              SizedBox(
                                height: height * 0.01,
                              ),
                              headerImage(
                                  maxHeight: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom >=
                                          200
                                      ? MediaQuery.of(context).size.height *
                                          0.15
                                      : MediaQuery.of(context).size.height *
                                          0.3),
                              // SizedBox(
                              //   height: height * 0.04,
                              // ),
                              MediaQuery.of(context).viewInsets.bottom >= 100
                                  ? SizedBox(height: height * 0.01)
                                  : const SizedBox.shrink(),
                              Center(child: headerLogIn()),
                              SizedBox(height: height * 0.02),
                              headerEmailAndPassword(),
                              SizedBox(height: height * 0.01),
                              emailField(context),
                              SizedBox(height: height * 0.01),
                              passwordfield(context),
                              SizedBox(height: height * 0.01),

                              rememberMeCheckBox(),
                              logInButton(context),
                              SizedBox(
                                height: height * 0.02,
                              ),
                              signUpButton(context),
                              const Spacer(),
                              footer(height),
                            ],
                          )),
                    );
                  } else {
                    return BaseHelper.showSnackBar('No Internet');
                  }
                })));
  }

  Center signUpButton(context) {
    return Center(
      child: RichText(
          text: TextSpan(
              text: "Don't Have An Account?     ",
              style: const TextStyle(color: AppColor.colorBlue),
              children: [
            TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    BaseHelper.hideKeypad(context);
                    Get.offAndToNamed(SignUpView.routeName);
                  },
                text: 'Sign Up',
                style: kUnderLineNormal13TextStyle)
          ])),
    );
  }

  logInButton(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomElevatedButton(
            onPressed: () {
              if (authcontrollerr.formKey.currentState!.validate()) {
                authcontrollerr.logInAuth(context);
              } else {
                return;
              }
            },
            text: ' Log in'),
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

  rememberMeCheckBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() => Checkbox(
                checkColor: AppColor.colorwhite,
                fillColor: MaterialStateProperty.all(AppColor.colorBlue),
                value: authcontrollerr.checkvalue.value,
                onChanged: (value) {
                  authcontrollerr.checkvalue.value = value!;
                })),
            Text('remember me', style: kNormalBlue14TextStyle),
          ],
        ),
        InkWell(
          onTap: () {
            Get.toNamed(ForgetPassword.routeName);
          },
          child: Text('forget Password ?', style: kNormalBlue14TextStyle),
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
        controller: authcontrollerr.passwordLogInController,
        hinttext: 'Password',
      ),
    );
  }

  emailField(BuildContext context) {
    return CustomTextFormField(
      validator: (val) => Validators.validateEmail(val),
      scrollPading:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: authcontrollerr.emailLogInContoller,
      hinttext: 'Email',
    );
  }

  Text headerEmailAndPassword() {
    return Text('Enter your Email and Password to log in',
        style: kNormalBlue14TextStyle);
  }

  Text headerLogIn() {
    return Text('Accesso', style: kHeadingBlueStyle);
  }
}

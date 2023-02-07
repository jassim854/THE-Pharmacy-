import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/basehelper.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/Login_view.dart';
import 'package:flutter_pharmacy_mobile_app/view/HomePage/home.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class AuthController extends GetxController {
  /// auth controller
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> formKey2 = GlobalKey<FormState>();
  TextEditingController emailSignUpContoller = TextEditingController();
  TextEditingController passwordSignUpController = TextEditingController();
  TextEditingController emailLogInContoller = TextEditingController();
  TextEditingController passwordLogInController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController forgetPasswordController = TextEditingController();

  /// google sign in
  var googleSignIn = GoogleSignIn();

  /// drop down field variable to check
  RxBool dropDown = false.obs;

  /// login check box

  final checkvalue = false.obs;

  /// admin check value
  final checkvalue3 = false.obs;

  /// sign up checkboxes
  final checkvalue1 = false.obs;
  final checkvalue2 = false.obs;
  RxBool obsecureVar = true.obs;
  Future logInAuth(context) async {
    BaseHelper.hideKeypad(context);
    EasyLoading.show();
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailLogInContoller.text.trim(),
          password: passwordLogInController.text.trim());
    } on FirebaseAuthException catch (e) {
      BaseHelper.showSnackBar(e.message);
    }
    EasyLoading.dismiss();
    formKey.currentState!.reset();
    emailLogInContoller.clear();
    passwordLogInController.clear();
  }

  Future forgetPassword(context) async {
    BaseHelper.hideKeypad(context);
    EasyLoading.show();
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: forgetPasswordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      BaseHelper.showSnackBar(e.message);
    }
    EasyLoading.dismiss();
    BaseHelper.showSnackBar(
        'Password Reset Email Sent Has been sent to"${forgetPasswordController.text.trim()}"');
    forgetPasswordController.clear();
  }

  Future signUp(context) async {
    BaseHelper.hideKeypad(context);
    EasyLoading.show();
    try {
      Firebase.app();

      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailSignUpContoller.text.trim(),
          password: passwordSignUpController.text.trim());
    } on FirebaseAuthException catch (e) {
      BaseHelper.showSnackBar(e.message);
    }
    EasyLoading.dismiss();
    emailSignUpContoller.clear();
    passwordSignUpController.clear();
    confirmPasswordController.clear();
    formKey1.currentState!.reset();
    Get.offAndToNamed(LogInView.routeName);
  }

  Future signInGoogle(context) async {
    BaseHelper.hideKeypad(context);
    EasyLoading.show();
    var googleAccount = Rx<GoogleSignInAccount?>(null);

    try {
      googleAccount.value = await googleSignIn.signIn();
      if (googleAccount.value == null) {
        EasyLoading.dismiss();
        BaseHelper.showSnackBar('Select account to Log In');
      } else {
        final googleAuth = await googleAccount.value!.authentication;
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
        Get.offAndToNamed(HomeView.routeName);
      }
    } on FirebaseAuthException catch (e) {
      BaseHelper.showSnackBar(e.message);
    }
    EasyLoading.dismiss();
  }

  Future signInFacebbok(context) async {
    BaseHelper.hideKeypad(context);

    EasyLoading.show();
    final LoginResult loginResult = await FacebookAuth.instance.login(
        permissions: ["email", "public_profile"],
        loginBehavior: LoginBehavior.webOnly);

    try {
      if (loginResult.accessToken == null) {
        EasyLoading.dismiss();
        BaseHelper.showSnackBar('Select account to Log In');
      } else {
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(loginResult.accessToken!.token);
        await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential);
        print(loginResult.accessToken!.token);
      }
    } on FirebaseAuthException catch (e) {
      BaseHelper.showSnackBar(e.message);
    }
    EasyLoading.dismiss();
  }

  Future logOut() async {
    EasyLoading.show();
    FirebaseAuth.instance.signOut();
    if (googleSignIn.currentUser != null) {
      googleSignIn.signOut();
      Get.offAndToNamed(LogInView.routeName);
      EasyLoading.dismiss();
    } else if (FacebookAuth.instance.accessToken != null) {
      FacebookAuth.instance.logOut();

      EasyLoading.dismiss();
    }

    EasyLoading.dismiss();
  }
}

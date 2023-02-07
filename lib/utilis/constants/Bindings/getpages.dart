import 'package:flutter_pharmacy_mobile_app/view/Auth/forgetPasswor.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/sign_up.dart';
import 'package:flutter_pharmacy_mobile_app/view/Chat/chatview.dart';
import 'package:flutter_pharmacy_mobile_app/view/HomePage/home.dart';


import 'package:get/get.dart';

import '../../../view/Auth/Login_view.dart';

class GetPageList {
  static List<GetPage> pages = [

    GetPage(
      name: SignUpView.routeName,
      page: () => SignUpView(),
    ),
     GetPage(
      name: LogInView.routeName,
      page: () => LogInView(),
    ),
    GetPage(
      name: ForgetPassword.routeName,
      page: () => ForgetPassword(),
    ),
       GetPage(
      name: HomeView.routeName,
      page: () => HomeView(),
    ),
         GetPage(
      name: ChatView.routeName,
      page: () => const ChatView(),
         )
    // GetPage(
    //   name: SignUpOrdinaryMember.routeName,
    //   page: () => SignUpOrdinaryMember(),
    // ),
    // GetPage(
    //     name: HomePage.routeName,
    //     page: () => HomePage(),
    //     binding: BindingsBuilder(() {
    //       Get.lazyPut(() => HomePageController());
    //     })),
  ];
}

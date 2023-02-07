import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/basehelper.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/custom_widgets.dart';
import 'package:flutter_pharmacy_mobile_app/Helper/Widget/elevated_button.dart';
import 'package:flutter_pharmacy_mobile_app/controllers/authcontroller.dart';
import 'package:flutter_pharmacy_mobile_app/controllers/homePageController.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/appimages.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/constants/colors.dart';
import 'package:flutter_pharmacy_mobile_app/utilis/textStyles.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/Login_view.dart';
import 'package:flutter_pharmacy_mobile_app/view/Auth/sign_up.dart';
import 'package:flutter_pharmacy_mobile_app/view/Chat/chatview.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/homeView';
  final authController = Get.find<AuthController>();
  final controller = Get.find<HomePageController>();
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          drawer: drawer(),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  header(),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.toNamed(ChatView.routeName);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  width: 0.7, color: AppColor.colorDarekGreey)),
                          child: const Text('Connect'),
                        ),
                      ),
                      Builder(builder: (context) {
                        return IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: const Icon(Icons.menu));
                      }),
                    ],
                  )
                ],
              ),
                   Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                  color: AppColor.colorwhite,
                ),
                child: Column(
                  children: [
                    SizedBox(
                        height: 350, child: Image.asset(Images.homePageCard2)),
                    Text(
                      "ENTRA NELLA COMMUNITY",
                      style: kHeadingBlackStyle,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 10, top: 10),
                      child: Text(
                        "Nessuno di noi può farcela da solo, insieme invece possiamo fare tanto. Entra nella nostra community e rimani aggiornato sulle ultime notizie, aggiornamenti, convenzioni e servizi che la federazione promuove continuamente. ",
                        style: kNormal14BlackTextStyle,
                      ),
                    ),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 20),
                        child: CustomElevatedButton(
                            backGroundColor: AppColor.colorOrange,
                            onPressed: () {},
                            child: Text(
                              'MEDIA',
                              style: kButtonWhite18TextStyle,
                            ))),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 20),
                        child: CustomElevatedButton(
                            backGroundColor: AppColor.colorOrange,
                            onPressed: () {},
                            child: Text(
                              'AVENTI',
                              style: kButtonWhite18TextStyle,
                            ))),
                    Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 20),
                        child: CustomElevatedButton(
                            backGroundColor: AppColor.colorOrange,
                            onPressed: () {},
                            child: Text(
                              'ANNUNCI',
                              style: kButtonWhite18TextStyle,
                            )))
                  ],
                ),
              ),
      
            ],
          )),
    );
  }

  

  drawer() {
    return SizedBox(
      width: 280,
      child: Drawer(
        backgroundColor: AppColor.colorwhite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: header(),
            ),
            dividerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
              child: InkWell(
                onTap: () {
                  Get.toNamed(HomeView.routeName);
                },
                child: Text(
                  'Home',
                  style: kSubheading16BlackStyle,
                ),
              ),
            ),
            dividerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
              child: InkWell(
                onTap: () {
                  Get.toNamed(HomeView.routeName);
                },
                child: Text(
                  'About Us',
                  style: kSubheading16BlackStyle,
                ),
              ),
            ),
            dividerWidget(),
            ExpansionTile(
              expandedAlignment: Alignment.centerLeft,
              childrenPadding: const EdgeInsets.only(left: 22),
              title: Text(
                'Partner-Convenzioni',
                style: kSubheading16BlackStyle,
              ),
              children: [
                Text(
                  'Portfolio',
                  style: kSubheading16BlackStyle,
                )
              ],
            ),
            dividerWidget(),
            ExpansionTile(
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              expandedAlignment: Alignment.centerLeft,
              title: Text(
                'News',
                style: kSubheading16BlackStyle,
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22, bottom: 15),
                  child: Text(
                    'Media',
                    style: kSubheading16BlackStyle,
                  ),
                ),
                dividerWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 22, bottom: 10, top: 10),
                  child: Text(
                    'Eventi',
                    style: kSubheading16BlackStyle,
                  ),
                ),
                dividerWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 22, bottom: 10, top: 10),
                  child: Text(
                    'Anunchi',
                    style: kSubheading16BlackStyle,
                  ),
                ),
                dividerWidget(),
                Padding(
                  padding: const EdgeInsets.only(left: 22, bottom: 10, top: 10),
                  child: Text(
                    'Communicati',
                    style: kSubheading16BlackStyle,
                  ),
                )
              ],
            ),
            dividerWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
              child: InkWell(
                onTap: () {
                  Get.toNamed(HomeView.routeName);
                },
                child: Text(
                  'Contatti',
                  style: kSubheading16BlackStyle,
                ),
              ),
            ),
            dividerWidget(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: InkWell(
                onTap: () async {
                  await authController.logOut();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'LOGOUT',
                      style: kSubheading16BlackStyle,
                    ),
                    const Icon(
                      Icons.logout,
                      color: AppColor.colorDarekGreey,
                      size: 16,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Divider dividerWidget() {
    return const Divider(
      color: AppColor.backgroundColorGrey,
      height: 0,
      thickness: 0.8,
    );
  }
}
